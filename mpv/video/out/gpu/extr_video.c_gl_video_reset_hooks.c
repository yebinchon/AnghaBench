
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gl_video {int num_tex_hooks; int num_user_textures; TYPE_1__* user_textures; int ra; TYPE_2__* tex_hooks; } ;
struct TYPE_4__ {int priv; } ;
struct TYPE_3__ {int tex; } ;


 int ra_tex_free (int ,int *) ;
 int talloc_free (int ) ;

__attribute__((used)) static void gl_video_reset_hooks(struct gl_video *p)
{
    for (int i = 0; i < p->num_tex_hooks; i++)
        talloc_free(p->tex_hooks[i].priv);

    for (int i = 0; i < p->num_user_textures; i++)
        ra_tex_free(p->ra, &p->user_textures[i].tex);

    p->num_tex_hooks = 0;
    p->num_user_textures = 0;
}
