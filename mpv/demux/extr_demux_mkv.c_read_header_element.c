
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct demuxer {int stream; int log; } ;
typedef int int64_t ;


 int EBML_ID_INVALID ;







 int demux_mkv_read_attachments (struct demuxer*) ;
 int demux_mkv_read_chapters (struct demuxer*) ;
 int demux_mkv_read_cues (struct demuxer*) ;
 int demux_mkv_read_info (struct demuxer*) ;
 int demux_mkv_read_seekhead (struct demuxer*) ;
 int demux_mkv_read_tags (struct demuxer*) ;
 int demux_mkv_read_tracks (struct demuxer*) ;
 int ebml_read_skip (int ,int,int ) ;
 scalar_t__ test_header_element (struct demuxer*,int,int ) ;

__attribute__((used)) static int read_header_element(struct demuxer *demuxer, uint32_t id,
                               int64_t start_filepos)
{
    if (id == EBML_ID_INVALID)
        return 0;

    if (test_header_element(demuxer, id, start_filepos))
        goto skip;

    switch(id) {
    case 131:
        return demux_mkv_read_info(demuxer);
    case 128:
        return demux_mkv_read_tracks(demuxer);
    case 132:
        return demux_mkv_read_cues(demuxer);
    case 129:
        return demux_mkv_read_tags(demuxer);
    case 130:
        return demux_mkv_read_seekhead(demuxer);
    case 133:
        return demux_mkv_read_chapters(demuxer);
    case 134:
        return demux_mkv_read_attachments(demuxer);
    }
skip:
    ebml_read_skip(demuxer->log, -1, demuxer->stream);
    return 0;
}
