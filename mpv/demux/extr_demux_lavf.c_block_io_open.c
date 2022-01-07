
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {int dummy; } ;
struct AVFormatContext {struct demuxer* opaque; } ;
typedef int AVIOContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int EACCES ;
 int MP_ERR (struct demuxer*,char*,char const*) ;

__attribute__((used)) static int block_io_open(struct AVFormatContext *s, AVIOContext **pb,
                         const char *url, int flags, AVDictionary **options)
{
    struct demuxer *demuxer = s->opaque;
    MP_ERR(demuxer, "Not opening '%s' due to --access-references=no.\n", url);
    return AVERROR(EACCES);
}
