
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_video {int num_user_textures; int user_textures; int ra; } ;
struct TYPE_2__ {int initial_data; } ;
struct gl_user_shader_tex {int tex; TYPE_1__ params; } ;


 int MP_TARRAY_APPEND (struct gl_video*,int ,int ,struct gl_user_shader_tex) ;
 int TA_FREEP (int *) ;
 int ra_tex_create (int ,TYPE_1__*) ;

__attribute__((used)) static bool add_user_tex(void *priv, struct gl_user_shader_tex tex)
{
    struct gl_video *p = priv;

    tex.tex = ra_tex_create(p->ra, &tex.params);
    TA_FREEP(&tex.params.initial_data);

    if (!tex.tex)
        return 0;

    MP_TARRAY_APPEND(p, p->user_textures, p->num_user_textures, tex);
    return 1;
}
