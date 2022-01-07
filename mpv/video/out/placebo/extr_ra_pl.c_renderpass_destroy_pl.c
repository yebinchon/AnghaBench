
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_renderpass {struct pass_priv* priv; } ;
struct ra {int dummy; } ;
struct pl_pass {int dummy; } ;
struct pass_priv {int pl_pass; } ;


 int get_gpu (struct ra*) ;
 int pl_pass_destroy (int ,struct pl_pass const**) ;
 int talloc_free (struct ra_renderpass*) ;

__attribute__((used)) static void renderpass_destroy_pl(struct ra *ra, struct ra_renderpass *pass)
{
    if (!pass)
        return;

    struct pass_priv *priv = pass->priv;
    pl_pass_destroy(get_gpu(ra), (const struct pl_pass **) &priv->pl_pass);
    talloc_free(pass);
}
