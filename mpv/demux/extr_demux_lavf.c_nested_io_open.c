
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nested_stream {int * id; } ;
struct demuxer {TYPE_1__* priv; } ;
struct AVFormatContext {struct demuxer* opaque; } ;
struct TYPE_3__ {int (* default_io_open ) (struct AVFormatContext*,int **,char const*,int,int **) ;int num_nested; int nested; } ;
typedef TYPE_1__ lavf_priv_t ;
typedef int AVIOContext ;
typedef int AVDictionary ;


 int MP_TARRAY_APPEND (TYPE_1__*,int ,int ,struct nested_stream) ;
 int stub1 (struct AVFormatContext*,int **,char const*,int,int **) ;

__attribute__((used)) static int nested_io_open(struct AVFormatContext *s, AVIOContext **pb,
                          const char *url, int flags, AVDictionary **options)
{
    struct demuxer *demuxer = s->opaque;
    lavf_priv_t *priv = demuxer->priv;

    int r = priv->default_io_open(s, pb, url, flags, options);
    if (r >= 0) {
        struct nested_stream nest = {
            .id = *pb,
        };
        MP_TARRAY_APPEND(priv, priv->nested, priv->num_nested, nest);
    }
    return r;
}
