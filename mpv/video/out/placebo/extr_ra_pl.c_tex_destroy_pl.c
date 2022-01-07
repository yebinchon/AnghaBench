
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_tex {int priv; } ;
struct ra {int dummy; } ;
struct pl_tex {int dummy; } ;


 int get_gpu (struct ra*) ;
 int pl_tex_destroy (int ,struct pl_tex const**) ;
 int talloc_free (struct ra_tex*) ;

__attribute__((used)) static void tex_destroy_pl(struct ra *ra, struct ra_tex *tex)
{
    if (!tex)
        return;

    pl_tex_destroy(get_gpu(ra), (const struct pl_tex **) &tex->priv);
    talloc_free(tex);
}
