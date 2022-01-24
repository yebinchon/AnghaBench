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
struct SN_env {int ket; int c; int lb; int* p; int bra; int* I; int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_1 ; 
 int /*<<< orphan*/  a_2 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  g_v ; 
 int FUNC1 (struct SN_env*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct SN_env*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 
 int /*<<< orphan*/  s_2 ; 
 int /*<<< orphan*/  s_3 ; 
 int /*<<< orphan*/  s_4 ; 
 int FUNC5 (struct SN_env*) ; 
 int FUNC6 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 34 */
    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 100 && z->p[z->c - 1] != 103)) return 0; /* substring, line 34 */
    among_var = FUNC0(z, a_2, 3);
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 34 */
    switch (among_var) { /* among, line 34 */
        case 1:
            {   int ret = FUNC3(z); /* call R1, line 35 */
                if (ret <= 0) return ret;
            }
            {   int ret = FUNC6(z, 2, s_2); /* <-, line 35 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int m_test1 = z->l - z->c; /* test, line 38 */
                {    /* gopast */ /* grouping v, line 38 */
                    int ret = FUNC2(z, g_v, 97, 121, 1);
                    if (ret < 0) return 0;
                    z->c -= ret;
                }
                z->c = z->l - m_test1;
            }
            {   int ret = FUNC5(z); /* delete, line 38 */
                if (ret < 0) return ret;
            }
            {   int m_test2 = z->l - z->c; /* test, line 39 */
                if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((68514004 >> (z->p[z->c - 1] & 0x1f)) & 1)) among_var = 3; else /* substring, line 39 */
                among_var = FUNC0(z, a_1, 13);
                if (!(among_var)) return 0;
                z->c = z->l - m_test2;
            }
            switch (among_var) { /* among, line 39 */
                case 1:
                    {   int ret;
                        {   int saved_c = z->c;
                            ret = FUNC1(z, z->c, z->c, 1, s_3); /* <+, line 41 */
                            z->c = saved_c;
                        }
                        if (ret < 0) return ret;
                    }
                    break;
                case 2:
                    z->ket = z->c; /* [, line 44 */
                    if (z->c <= z->lb) return 0;
                    z->c--; /* next, line 44 */
                    z->bra = z->c; /* ], line 44 */
                    {   int ret = FUNC5(z); /* delete, line 44 */
                        if (ret < 0) return ret;
                    }
                    break;
                case 3:
                    if (z->c != z->I[0]) return 0; /* atmark, line 45 */
                    {   int m_test3 = z->l - z->c; /* test, line 45 */
                        {   int ret = FUNC4(z); /* call shortv, line 45 */
                            if (ret <= 0) return ret;
                        }
                        z->c = z->l - m_test3;
                    }
                    {   int ret;
                        {   int saved_c = z->c;
                            ret = FUNC1(z, z->c, z->c, 1, s_4); /* <+, line 45 */
                            z->c = saved_c;
                        }
                        if (ret < 0) return ret;
                    }
                    break;
            }
            break;
    }
    return 1;
}