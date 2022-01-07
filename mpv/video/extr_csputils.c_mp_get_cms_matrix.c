
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_csp_primaries {int white; } ;
typedef enum mp_render_intent { ____Placeholder_mp_render_intent } mp_render_intent ;


 int MP_INTENT_ABSOLUTE_COLORIMETRIC ;
 int MP_INTENT_SATURATION ;
 int mp_apply_chromatic_adaptation (int ,int ,float**) ;
 int mp_get_rgb2xyz_matrix (struct mp_csp_primaries,float**) ;
 int mp_invert_matrix3x3 (float**) ;
 int mp_mul_matrix3x3 (float**,float**) ;

void mp_get_cms_matrix(struct mp_csp_primaries src, struct mp_csp_primaries dest,
                       enum mp_render_intent intent, float m[3][3])
{
    float tmp[3][3];



    if (intent == MP_INTENT_SATURATION) {
        for (int i = 0; i < 3; i++)
            m[i][i] = 1;
        return;
    }







    mp_get_rgb2xyz_matrix(dest, m);
    mp_invert_matrix3x3(m);


    if (intent != MP_INTENT_ABSOLUTE_COLORIMETRIC)
        mp_apply_chromatic_adaptation(src.white, dest.white, m);


    mp_get_rgb2xyz_matrix(src, tmp);
    mp_mul_matrix3x3(m, tmp);
}
