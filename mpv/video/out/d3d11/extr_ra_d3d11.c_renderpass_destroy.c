
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_renderpass {struct d3d_rpass* priv; } ;
struct ra {int dummy; } ;
struct d3d_rpass {int bstate; int layout; int cs; int ps; int vs; } ;


 int SAFE_RELEASE (int ) ;
 int talloc_free (struct ra_renderpass*) ;

__attribute__((used)) static void renderpass_destroy(struct ra *ra, struct ra_renderpass *pass)
{
    if (!pass)
        return;
    struct d3d_rpass *pass_p = pass->priv;

    SAFE_RELEASE(pass_p->vs);
    SAFE_RELEASE(pass_p->ps);
    SAFE_RELEASE(pass_p->cs);
    SAFE_RELEASE(pass_p->layout);
    SAFE_RELEASE(pass_p->bstate);
    talloc_free(pass);
}
