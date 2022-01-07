
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_15__ {int eof; } ;
typedef TYPE_2__ stream_t ;
typedef scalar_t__ int64_t ;
struct TYPE_16__ {TYPE_1__* params; TYPE_2__* stream; } ;
typedef TYPE_3__ demuxer_t ;
struct TYPE_14__ {int matroska_wanted_segment; } ;


 scalar_t__ EBML_UINT_INVALID ;
 scalar_t__ MATROSKA_ID_SEGMENT ;
 int MP_DBG (TYPE_3__*,char*) ;
 int MP_VERBOSE (TYPE_3__*,char*) ;
 int MP_WARN (TYPE_3__*,char*) ;
 scalar_t__ ebml_read_id (TYPE_2__*) ;
 scalar_t__ ebml_read_length (TYPE_2__*) ;
 int read_ebml_header (TYPE_3__*) ;
 scalar_t__ stream_get_size (TYPE_2__*) ;
 int stream_seek (TYPE_2__*,scalar_t__) ;
 scalar_t__ stream_tell (TYPE_2__*) ;

__attribute__((used)) static int read_mkv_segment_header(demuxer_t *demuxer, int64_t *segment_end)
{
    stream_t *s = demuxer->stream;
    int num_skip = 0;
    if (demuxer->params)
        num_skip = demuxer->params->matroska_wanted_segment;

    while (!s->eof) {
        if (ebml_read_id(s) != MATROSKA_ID_SEGMENT) {
            MP_VERBOSE(demuxer, "segment not found\n");
            return 0;
        }
        MP_DBG(demuxer, "+ a segment...\n");
        uint64_t len = ebml_read_length(s);
        *segment_end = (len == EBML_UINT_INVALID) ? 0 : stream_tell(s) + len;
        if (num_skip <= 0)
            return 1;
        num_skip--;
        MP_DBG(demuxer, "  (skipping)\n");
        if (*segment_end <= 0)
            break;
        if (*segment_end >= stream_get_size(s))
            return 0;
        if (!stream_seek(s, *segment_end)) {
            MP_WARN(demuxer, "Failed to seek in file\n");
            return 0;
        }

        if (!read_ebml_header(demuxer))
            return 0;
    }

    MP_VERBOSE(demuxer, "End of file, no further segments.\n");
    return 0;
}
