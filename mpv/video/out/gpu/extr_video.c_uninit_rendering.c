
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_video {int num_hook_textures; int sc; int * hook_textures; int ra; TYPE_1__* surfaces; int * error_diffusion_tex; int output_tex; int screen_tex; int blend_subs_tex; int indirect_tex; int * integer_tex; int * scale_tex; int * merge_tex; int dither_texture; int * scaler; } ;
struct TYPE_2__ {int tex; } ;


 int SCALER_COUNT ;
 int SURFACES_MAX ;
 int gl_sc_reset_error (int ) ;
 int gl_video_reset_hooks (struct gl_video*) ;
 int gl_video_reset_surfaces (struct gl_video*) ;
 int ra_tex_free (int ,int *) ;
 int uninit_scaler (struct gl_video*,int *) ;

__attribute__((used)) static void uninit_rendering(struct gl_video *p)
{
    for (int n = 0; n < SCALER_COUNT; n++)
        uninit_scaler(p, &p->scaler[n]);

    ra_tex_free(p->ra, &p->dither_texture);

    for (int n = 0; n < 4; n++) {
        ra_tex_free(p->ra, &p->merge_tex[n]);
        ra_tex_free(p->ra, &p->scale_tex[n]);
        ra_tex_free(p->ra, &p->integer_tex[n]);
    }

    ra_tex_free(p->ra, &p->indirect_tex);
    ra_tex_free(p->ra, &p->blend_subs_tex);
    ra_tex_free(p->ra, &p->screen_tex);
    ra_tex_free(p->ra, &p->output_tex);

    for (int n = 0; n < 2; n++)
        ra_tex_free(p->ra, &p->error_diffusion_tex[n]);

    for (int n = 0; n < SURFACES_MAX; n++)
        ra_tex_free(p->ra, &p->surfaces[n].tex);

    for (int n = 0; n < p->num_hook_textures; n++)
        ra_tex_free(p->ra, &p->hook_textures[n]);

    gl_video_reset_surfaces(p);
    gl_video_reset_hooks(p);

    gl_sc_reset_error(p->sc);
}
