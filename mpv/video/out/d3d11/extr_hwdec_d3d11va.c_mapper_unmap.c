
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec_mapper {int * tex; int ra; struct priv* priv; } ;
struct priv {scalar_t__ copy_tex; } ;


 int ra_tex_free (int ,int *) ;

__attribute__((used)) static void mapper_unmap(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    if (p->copy_tex)
        return;
    for (int i = 0; i < 4; i++)
        ra_tex_free(mapper->ra, &mapper->tex[i]);
}
