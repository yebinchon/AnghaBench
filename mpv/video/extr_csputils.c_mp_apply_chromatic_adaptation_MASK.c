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
struct mp_csp_col_xy {scalar_t__ y; scalar_t__ x; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (float**) ; 
 int /*<<< orphan*/  FUNC2 (float**,float**) ; 
 float FUNC3 (struct mp_csp_col_xy) ; 
 float FUNC4 (struct mp_csp_col_xy) ; 

__attribute__((used)) static void FUNC5(struct mp_csp_col_xy src,
                                          struct mp_csp_col_xy dest, float m[3][3])
{
    // If the white points are nearly identical, this is a wasteful identity
    // operation.
    if (FUNC0(src.x - dest.x) < 1e-6 && FUNC0(src.y - dest.y) < 1e-6)
        return;

    // XYZd<-XYZs = Ma^-1 * (I*[Cd/Cs]) * Ma
    // http://www.brucelindbloom.com/index.html?Eqn_ChromAdapt.html
    float C[3][2], tmp[3][3] = {{0}};

    // Ma = Bradford matrix, arguably most popular method in use today.
    // This is derived experimentally and thus hard-coded.
    float bradford[3][3] = {
        {  0.8951,  0.2664, -0.1614 },
        { -0.7502,  1.7135,  0.0367 },
        {  0.0389, -0.0685,  1.0296 },
    };

    for (int i = 0; i < 3; i++) {
        // source cone
        C[i][0] = bradford[i][0] * FUNC3(src)
                + bradford[i][1] * 1
                + bradford[i][2] * FUNC4(src);

        // dest cone
        C[i][1] = bradford[i][0] * FUNC3(dest)
                + bradford[i][1] * 1
                + bradford[i][2] * FUNC4(dest);
    }

    // tmp := I * [Cd/Cs] * Ma
    for (int i = 0; i < 3; i++)
        tmp[i][i] = C[i][1] / C[i][0];

    FUNC2(tmp, bradford);

    // M := M * Ma^-1 * tmp
    FUNC1(bradford);
    FUNC2(m, bradford);
    FUNC2(m, tmp);
}