
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_csp_primaries {int white; } ;
struct TYPE_2__ {int primaries; } ;
struct mp_csp_params {float brightness; TYPE_1__ color; } ;
struct mp_csp_col_xy {double member_0; double member_1; } ;
struct mp_cmat {float* c; int m; } ;
typedef enum mp_render_intent { ____Placeholder_mp_render_intent } mp_render_intent ;


 int MP_INTENT_ABSOLUTE_COLORIMETRIC ;
 float fabs (float) ;
 int mp_apply_chromatic_adaptation (struct mp_csp_col_xy const,int ,int ) ;
 struct mp_csp_primaries mp_get_csp_primaries (int ) ;
 int mp_get_rgb2xyz_matrix (struct mp_csp_primaries,int ) ;
 int mp_invert_matrix3x3 (int ) ;

__attribute__((used)) static void mp_get_xyz2rgb_coeffs(struct mp_csp_params *params,
                                  enum mp_render_intent intent, struct mp_cmat *m)
{
    struct mp_csp_primaries prim = mp_get_csp_primaries(params->color.primaries);
    float brightness = params->brightness;
    mp_get_rgb2xyz_matrix(prim, m->m);
    mp_invert_matrix3x3(m->m);


    if (intent != MP_INTENT_ABSOLUTE_COLORIMETRIC) {

        static const struct mp_csp_col_xy smpte428 = {0.314, 0.351};
        mp_apply_chromatic_adaptation(smpte428, prim.white, m->m);
    }





    brightness *= fabs(brightness);

    for (int i = 0; i < 3; i++)
        m->c[i] = brightness;
}
