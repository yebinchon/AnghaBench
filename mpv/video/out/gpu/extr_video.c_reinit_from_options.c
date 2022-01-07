
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gl_video_opts {scalar_t__ interpolation; int pbo; int shader_cache_dir; int background; } ;
struct gl_video {int dsi_warned; struct gl_video_opts opts; int global; TYPE_2__* ra; int sc; int clear_color; int force_clear_color; TYPE_1__* opts_cache; int cms; int use_lut_3d; } ;
struct TYPE_4__ {int use_pbo; } ;
struct TYPE_3__ {scalar_t__ opts; } ;


 int MP_WARN (struct gl_video*,char*) ;
 int check_gl_features (struct gl_video*) ;
 int gl_lcms_has_profile (int ) ;
 int gl_sc_set_cache_dir (int ,int ) ;
 int gl_video_setup_hooks (struct gl_video*) ;
 int m_option_type_choice ;
 int mp_read_option_raw (int ,char*,int *,int*) ;
 int reinit_osd (struct gl_video*) ;
 int uninit_rendering (struct gl_video*) ;

__attribute__((used)) static void reinit_from_options(struct gl_video *p)
{
    p->use_lut_3d = gl_lcms_has_profile(p->cms);




    p->opts = *(struct gl_video_opts *)p->opts_cache->opts;

    if (!p->force_clear_color)
        p->clear_color = p->opts.background;

    check_gl_features(p);
    uninit_rendering(p);
    gl_sc_set_cache_dir(p->sc, p->opts.shader_cache_dir);
    p->ra->use_pbo = p->opts.pbo;
    gl_video_setup_hooks(p);
    reinit_osd(p);

    int vs;
    mp_read_option_raw(p->global, "video-sync", &m_option_type_choice, &vs);
    if (p->opts.interpolation && !vs && !p->dsi_warned) {
        MP_WARN(p, "Interpolation now requires enabling display-sync mode.\n"
                   "E.g.: --video-sync=display-resample\n");
        p->dsi_warned = 1;
    }
}
