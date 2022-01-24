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
struct SN_env {int c; int* I; int lb; int ket; int* p; int bra; int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_0 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  g_s_ending ; 
 int /*<<< orphan*/  g_v ; 
 int /*<<< orphan*/  FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_0 ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    int among_var;

    {   int mlimit1; /* setlimit, line 38 */
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c; /* [, line 38 */
        if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1851426 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->lb = mlimit1; return 0; } /* substring, line 38 */
        among_var = FUNC0(z, a_0, 29);
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c; /* ], line 38 */
        z->lb = mlimit1;
    }
    switch (among_var) { /* among, line 39 */
        case 1:
            {   int ret = FUNC3(z); /* delete, line 44 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int m2 = z->l - z->c; (void)m2; /* or, line 46 */
                if (FUNC1(z, g_s_ending, 98, 122, 0)) goto lab1; /* grouping s_ending, line 46 */
                goto lab0;
            lab1:
                z->c = z->l - m2;
                if (z->c <= z->lb || z->p[z->c - 1] != 'k') return 0; /* literal, line 46 */
                z->c--;
                if (FUNC2(z, g_v, 97, 248, 0)) return 0; /* non v, line 46 */
            }
        lab0:
            {   int ret = FUNC3(z); /* delete, line 46 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            {   int ret = FUNC4(z, 2, s_0); /* <-, line 48 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}