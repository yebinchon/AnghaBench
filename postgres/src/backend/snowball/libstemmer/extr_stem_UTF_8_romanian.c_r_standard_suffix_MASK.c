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
struct SN_env {int* B; int l; int c; int ket; int bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_3 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int /*<<< orphan*/  s_17 ; 
 int /*<<< orphan*/  s_18 ; 
 int /*<<< orphan*/  s_19 ; 
 int FUNC4 (struct SN_env*) ; 
 int FUNC5 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->B[0] = 0; /* unset standard_suffix_removed, line 130 */
    while(1) { /* repeat, line 131 */
        int m1 = z->l - z->c; (void)m1;
        {   int ret = FUNC3(z); /* call combo_suffix, line 131 */
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
        continue;
    lab0:
        z->c = z->l - m1;
        break;
    }
    z->ket = z->c; /* [, line 132 */
    among_var = FUNC1(z, a_3, 62); /* substring, line 132 */
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 132 */
    {   int ret = FUNC2(z); /* call R2, line 132 */
        if (ret <= 0) return ret;
    }
    switch (among_var) { /* among, line 133 */
        case 1:
            {   int ret = FUNC4(z); /* delete, line 149 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(FUNC0(z, 2, s_17))) return 0; /* literal, line 152 */
            z->bra = z->c; /* ], line 152 */
            {   int ret = FUNC5(z, 1, s_18); /* <-, line 152 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            {   int ret = FUNC5(z, 3, s_19); /* <-, line 156 */
                if (ret < 0) return ret;
            }
            break;
    }
    z->B[0] = 1; /* set standard_suffix_removed, line 160 */
    return 1;
}