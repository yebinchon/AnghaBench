
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_hwdec_mapper {int ra; struct priv* priv; } ;
struct priv {int gl_planes; } ;
struct TYPE_3__ {int (* DeleteTextures ) (int ,int ) ;} ;
typedef TYPE_1__ GL ;


 int MP_MAX_PLANES ;
 TYPE_1__* ra_gl_get (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void mapper_uninit(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);

    gl->DeleteTextures(MP_MAX_PLANES, p->gl_planes);
}
