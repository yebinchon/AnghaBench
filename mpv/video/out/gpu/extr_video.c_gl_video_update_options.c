
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {int output_tex_valid; int video_eq; int cms; int opts_cache; } ;


 int gl_lcms_update_options (int ) ;
 scalar_t__ m_config_cache_update (int ) ;
 scalar_t__ mp_csp_equalizer_state_changed (int ) ;
 int reinit_from_options (struct gl_video*) ;

__attribute__((used)) static void gl_video_update_options(struct gl_video *p)
{
    if (m_config_cache_update(p->opts_cache)) {
        gl_lcms_update_options(p->cms);
        reinit_from_options(p);
    }

    if (mp_csp_equalizer_state_changed(p->video_eq))
        p->output_tex_valid = 0;
}
