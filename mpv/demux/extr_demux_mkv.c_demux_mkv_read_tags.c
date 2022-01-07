
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mkv_demuxer {int tags; } ;
struct ebml_tags {int member_0; } ;
struct ebml_parse_ctx {int talloc_ctx; int member_0; } ;
typedef int stream_t ;
struct TYPE_3__ {int log; int * stream; struct mkv_demuxer* priv; } ;
typedef TYPE_1__ demuxer_t ;


 scalar_t__ ebml_read_element (int *,struct ebml_parse_ctx*,struct ebml_tags*,int *) ;
 int ebml_tags_desc ;
 int talloc_dup (struct mkv_demuxer*,struct ebml_tags*) ;
 int talloc_steal (int ,int ) ;

__attribute__((used)) static int demux_mkv_read_tags(demuxer_t *demuxer)
{
    struct mkv_demuxer *mkv_d = demuxer->priv;
    stream_t *s = demuxer->stream;

    struct ebml_parse_ctx parse_ctx = {demuxer->log};
    struct ebml_tags tags = {0};
    if (ebml_read_element(s, &parse_ctx, &tags, &ebml_tags_desc) < 0)
        return -1;

    mkv_d->tags = talloc_dup(mkv_d, &tags);
    talloc_steal(mkv_d->tags, parse_ctx.talloc_ctx);
    return 0;
}
