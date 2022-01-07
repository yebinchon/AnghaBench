
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tex_hook {void* save_tex; void** bind_tex; void** hook_tex; struct gl_user_shader_hook* priv; int cond; int hook; int align_offset; int components; } ;
struct gl_video {int num_tex_hooks; int tex_hooks; } ;
struct gl_user_shader_hook {int * bind_tex; int * hook_tex; int align_offset; int components; int save_tex; } ;


 int MP_TARRAY_APPEND (struct gl_video*,int ,int ,struct tex_hook) ;
 int SHADER_MAX_BINDS ;
 int SHADER_MAX_HOOKS ;
 void* bstrdup0 (struct gl_user_shader_hook*,int ) ;
 struct gl_user_shader_hook* copy ;
 struct gl_user_shader_hook* talloc_ptrtype (struct gl_video*,int ) ;
 int user_hook ;
 int user_hook_cond ;

__attribute__((used)) static bool add_user_hook(void *priv, struct gl_user_shader_hook hook)
{
    struct gl_video *p = priv;
    struct gl_user_shader_hook *copy = talloc_ptrtype(p, copy);
    *copy = hook;

    struct tex_hook texhook = {
        .save_tex = bstrdup0(copy, hook.save_tex),
        .components = hook.components,
        .align_offset = hook.align_offset,
        .hook = user_hook,
        .cond = user_hook_cond,
        .priv = copy,
    };

    for (int h = 0; h < SHADER_MAX_HOOKS; h++)
        texhook.hook_tex[h] = bstrdup0(copy, hook.hook_tex[h]);
    for (int h = 0; h < SHADER_MAX_BINDS; h++)
        texhook.bind_tex[h] = bstrdup0(copy, hook.bind_tex[h]);

    MP_TARRAY_APPEND(p, p->tex_hooks, p->num_tex_hooks, texhook);
    return 1;
}
