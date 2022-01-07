
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_hwdec_mapper {int * tex; int ra; struct priv* priv; } ;
struct priv {int * rtarget; scalar_t__ texture; scalar_t__ rtarget_h; scalar_t__ device_h; } ;
struct TYPE_3__ {int (* DeleteTextures ) (int,scalar_t__*) ;int (* DXUnregisterObjectNV ) (scalar_t__,scalar_t__) ;int (* DXUnlockObjectsNV ) (scalar_t__,int,scalar_t__*) ;} ;
typedef TYPE_1__ GL ;


 int IDirect3DSurface9_Release (int *) ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,int ) ;
 int mp_LastError_to_str () ;
 TYPE_1__* ra_gl_get (int ) ;
 int ra_tex_free (int ,int *) ;
 int stub1 (scalar_t__,int,scalar_t__*) ;
 int stub2 (scalar_t__,scalar_t__) ;
 int stub3 (int,scalar_t__*) ;

__attribute__((used)) static void mapper_uninit(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);

    if (p->rtarget_h && p->device_h) {
        if (!gl->DXUnlockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
            MP_ERR(mapper, "Failed unlocking texture for access by OpenGL: %s\n",
                   mp_LastError_to_str());
        }
    }

    if (p->rtarget_h) {
        if (!gl->DXUnregisterObjectNV(p->device_h, p->rtarget_h)) {
            MP_ERR(mapper, "Failed to unregister Direct3D surface with OpenGL: %s\n",
                   mp_LastError_to_str());
        } else {
            p->rtarget_h = 0;
        }
    }

    gl->DeleteTextures(1, &p->texture);
    p->texture = 0;

    if (p->rtarget) {
        IDirect3DSurface9_Release(p->rtarget);
        p->rtarget = ((void*)0);
    }

    ra_tex_free(mapper->ra, &mapper->tex[0]);
}
