
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int shutdown; struct encoder_context* enc; } ;
struct encoder_context {int dummy; } ;


 int encoder_encode (struct encoder_context*,int *) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct priv *vc = vo->priv;
    struct encoder_context *enc = vc->enc;

    if (!vc->shutdown)
        encoder_encode(enc, ((void*)0));
}
