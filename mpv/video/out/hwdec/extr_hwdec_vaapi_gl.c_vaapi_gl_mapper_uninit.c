
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vaapi_gl_mapper_priv {scalar_t__* gl_textures; } ;
struct ra_hwdec_mapper {int ra; struct priv* priv; } ;
struct priv {struct vaapi_gl_mapper_priv* interop_mapper_priv; int * tex; } ;
struct TYPE_3__ {int (* DeleteTextures ) (int,scalar_t__*) ;} ;
typedef TYPE_1__ GL ;


 TYPE_1__* ra_gl_get (int ) ;
 int ra_tex_free (int ,int *) ;
 int stub1 (int,scalar_t__*) ;
 int talloc_free (struct vaapi_gl_mapper_priv*) ;

__attribute__((used)) static void vaapi_gl_mapper_uninit(const struct ra_hwdec_mapper *mapper)
{
    struct priv *p_mapper = mapper->priv;
    struct vaapi_gl_mapper_priv *p = p_mapper->interop_mapper_priv;

    if (p) {
        GL *gl = ra_gl_get(mapper->ra);
        gl->DeleteTextures(4, p->gl_textures);
        for (int n = 0; n < 4; n++) {
            p->gl_textures[n] = 0;
            ra_tex_free(mapper->ra, &p_mapper->tex[n]);
        }
        talloc_free(p);
        p_mapper->interop_mapper_priv = ((void*)0);
    }
}
