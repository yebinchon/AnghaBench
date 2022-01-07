
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* opts; } ;
typedef TYPE_2__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_2__* priv; } ;
struct TYPE_11__ {scalar_t__ len; } ;
typedef TYPE_3__ bstr ;
struct TYPE_9__ {int hwdec_codecs; } ;


 TYPE_3__ bstr0 (int ) ;
 scalar_t__ bstr_equals0 (TYPE_3__,char const*) ;
 int bstr_split_tok (TYPE_3__,char*,TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static bool hwdec_codec_allowed(struct mp_filter *vd, const char *codec)
{
    vd_ffmpeg_ctx *ctx = vd->priv;
    bstr s = bstr0(ctx->opts->hwdec_codecs);
    while (s.len) {
        bstr item;
        bstr_split_tok(s, ",", &item, &s);
        if (bstr_equals0(item, "all") || bstr_equals0(item, codec))
            return 1;
    }
    return 0;
}
