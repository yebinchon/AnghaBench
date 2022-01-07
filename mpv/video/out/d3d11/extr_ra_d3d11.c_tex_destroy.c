
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_tex {struct d3d_tex* priv; } ;
struct ra {int dummy; } ;
struct d3d_tex {int staging; int res; int sampler; int uav; int rtv; int srv; } ;


 int SAFE_RELEASE (int ) ;
 int talloc_free (struct ra_tex*) ;

__attribute__((used)) static void tex_destroy(struct ra *ra, struct ra_tex *tex)
{
    if (!tex)
        return;
    struct d3d_tex *tex_p = tex->priv;

    SAFE_RELEASE(tex_p->srv);
    SAFE_RELEASE(tex_p->rtv);
    SAFE_RELEASE(tex_p->uav);
    SAFE_RELEASE(tex_p->sampler);
    SAFE_RELEASE(tex_p->res);
    SAFE_RELEASE(tex_p->staging);
    talloc_free(tex);
}
