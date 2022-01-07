
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_hwdec_mapper {int ra; struct priv* priv; TYPE_1__* owner; } ;
struct priv_owner {int egl_display; int (* DestroyStreamKHR ) (int ,scalar_t__) ;} ;
struct priv {int gl_textures; scalar_t__ egl_stream; } ;
struct TYPE_5__ {int (* DeleteTextures ) (int,int ) ;} ;
struct TYPE_4__ {struct priv_owner* priv; } ;
typedef TYPE_2__ GL ;


 TYPE_2__* ra_gl_get (int ) ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int,int ) ;

__attribute__((used)) static void mapper_uninit(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *o = mapper->owner->priv;
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);

    if (p->egl_stream)
        o->DestroyStreamKHR(o->egl_display, p->egl_stream);
    p->egl_stream = 0;

    gl->DeleteTextures(2, p->gl_textures);
}
