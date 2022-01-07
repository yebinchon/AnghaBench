
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int log; int encode_lavc_ctx; struct priv* priv; } ;
struct priv {int enc; } ;


 int STREAM_VIDEO ;
 int encoder_context_alloc (int ,int ,int ) ;
 int talloc_steal (struct priv*,int ) ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct priv *vc = vo->priv;
    vc->enc = encoder_context_alloc(vo->encode_lavc_ctx, STREAM_VIDEO, vo->log);
    if (!vc->enc)
        return -1;
    talloc_steal(vc, vc->enc);
    return 0;
}
