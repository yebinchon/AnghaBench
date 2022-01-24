#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_csp_primaries {int /*<<< orphan*/  white; } ;
struct TYPE_2__ {int /*<<< orphan*/  primaries; } ;
struct mp_csp_params {float brightness; TYPE_1__ color; } ;
struct mp_csp_col_xy {double member_0; double member_1; } ;
struct mp_cmat {float* c; int /*<<< orphan*/  m; } ;
typedef  enum mp_render_intent { ____Placeholder_mp_render_intent } mp_render_intent ;

/* Variables and functions */
 int MP_INTENT_ABSOLUTE_COLORIMETRIC ; 
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_csp_col_xy const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mp_csp_primaries FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_csp_primaries,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mp_csp_params *params,
                                  enum mp_render_intent intent, struct mp_cmat *m)
{
    struct mp_csp_primaries prim = FUNC2(params->color.primaries);
    float brightness = params->brightness;
    FUNC3(prim, m->m);
    FUNC4(m->m);

    // All non-absolute mappings want to map source white to target white
    if (intent != MP_INTENT_ABSOLUTE_COLORIMETRIC) {
        // SMPTE 428-1 defines the calibration white point as CIE xy (0.314, 0.351)
        static const struct mp_csp_col_xy smpte428 = {0.314, 0.351};
        FUNC1(smpte428, prim.white, m->m);
    }

    // Since this outputs linear RGB rather than companded RGB, we
    // want to linearize any brightness additions. 2 is a reasonable
    // approximation for any sort of gamma function that could be in use.
    // As this is an aesthetic setting only, any exact values do not matter.
    brightness *= FUNC0(brightness);

    for (int i = 0; i < 3; i++)
        m->c[i] = brightness;
}