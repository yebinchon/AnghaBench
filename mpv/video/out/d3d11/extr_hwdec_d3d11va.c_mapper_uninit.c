
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec_mapper {int * tex; int ra; struct priv* priv; } ;
struct priv {int ctx; int copy_tex; } ;


 int SAFE_RELEASE (int ) ;
 int ra_tex_free (int ,int *) ;

__attribute__((used)) static void mapper_uninit(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    for (int i = 0; i < 4; i++)
        ra_tex_free(mapper->ra, &mapper->tex[i]);
    SAFE_RELEASE(p->copy_tex);
    SAFE_RELEASE(p->ctx);
}
