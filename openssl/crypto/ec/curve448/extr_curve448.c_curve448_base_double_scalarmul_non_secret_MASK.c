#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct smvt_control {int power; int addend; } ;
typedef  int /*<<< orphan*/  precmp_var ;
typedef  struct smvt_control pniels_t ;
typedef  int /*<<< orphan*/  curve448_scalar_t ;
typedef  int /*<<< orphan*/  curve448_point_t ;
typedef  int /*<<< orphan*/  control_var ;
typedef  int /*<<< orphan*/  control_pre ;

/* Variables and functions */
 int C448_SCALAR_BITS ; 
 int C448_WNAF_FIXED_TABLE_BITS ; 
 int C448_WNAF_VAR_TABLE_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct smvt_control*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct smvt_control,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curve448_point_identity ; 
 int /*<<< orphan*/ * curve448_wnaf_base ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct smvt_control) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct smvt_control*,int /*<<< orphan*/  const,int const) ; 
 int FUNC9 (struct smvt_control*,int /*<<< orphan*/  const,int const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct smvt_control,int) ; 

void FUNC12(curve448_point_t combo,
                                               const curve448_scalar_t scalar1,
                                               const curve448_point_t base2,
                                               const curve448_scalar_t scalar2)
{
    const int table_bits_var = C448_WNAF_VAR_TABLE_BITS;
    const int table_bits_pre = C448_WNAF_FIXED_TABLE_BITS;
    struct smvt_control control_var[C448_SCALAR_BITS /
                                    (C448_WNAF_VAR_TABLE_BITS + 1) + 3];
    struct smvt_control control_pre[C448_SCALAR_BITS /
                                    (C448_WNAF_FIXED_TABLE_BITS + 1) + 3];
    int ncb_pre = FUNC9(control_pre, scalar1, table_bits_pre);
    int ncb_var = FUNC9(control_var, scalar2, table_bits_var);
    pniels_t precmp_var[1 << C448_WNAF_VAR_TABLE_BITS];
    int contp = 0, contv = 0, i;

    FUNC8(precmp_var, base2, table_bits_var);
    i = control_var[0].power;

    if (i < 0) {
        FUNC4(combo, curve448_point_identity);
        return;
    }
    if (i > control_pre[0].power) {
        FUNC6(combo, precmp_var[control_var[0].addend >> 1]);
        contv++;
    } else if (i == control_pre[0].power && i >= 0) {
        FUNC6(combo, precmp_var[control_var[0].addend >> 1]);
        FUNC1(combo, curve448_wnaf_base[control_pre[0].addend >> 1],
                        i);
        contv++;
        contp++;
    } else {
        i = control_pre[0].power;
        FUNC5(combo, curve448_wnaf_base[control_pre[0].addend >> 1]);
        contp++;
    }

    for (i--; i >= 0; i--) {
        int cv = (i == control_var[contv].power);
        int cp = (i == control_pre[contp].power);

        FUNC7(combo, combo, i && !(cv || cp));

        if (cv) {
            FUNC3(control_var[contv].addend);

            if (control_var[contv].addend > 0)
                FUNC2(combo,
                                 precmp_var[control_var[contv].addend >> 1],
                                 i && !cp);
            else
                FUNC11(combo,
                                   precmp_var[(-control_var[contv].addend)
                                              >> 1], i && !cp);
            contv++;
        }

        if (cp) {
            FUNC3(control_pre[contp].addend);

            if (control_pre[contp].addend > 0)
                FUNC1(combo,
                                curve448_wnaf_base[control_pre[contp].addend
                                                   >> 1], i);
            else
                FUNC10(combo,
                                  curve448_wnaf_base[(-control_pre
                                                      [contp].addend) >> 1], i);
            contp++;
        }
    }

    /* This function is non-secret, but whatever this is cheap. */
    FUNC0(control_var, sizeof(control_var));
    FUNC0(control_pre, sizeof(control_pre));
    FUNC0(precmp_var, sizeof(precmp_var));

    FUNC3(contv == ncb_var);
    (void)ncb_var;
    FUNC3(contp == ncb_pre);
    (void)ncb_pre;
}