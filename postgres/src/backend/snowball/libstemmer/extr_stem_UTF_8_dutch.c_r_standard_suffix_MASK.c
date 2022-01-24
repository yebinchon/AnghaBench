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
struct SN_env {int l; int c; int ket; int lb; int* p; size_t bra; int /*<<< orphan*/ * B; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_3 ; 
 int /*<<< orphan*/  a_4 ; 
 int /*<<< orphan*/  a_5 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  g_v ; 
 int /*<<< orphan*/  g_v_I ; 
 int /*<<< orphan*/  g_v_j ; 
 scalar_t__ FUNC2 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 
 int FUNC5 (struct SN_env*) ; 
 int FUNC6 (struct SN_env*) ; 
 int FUNC7 (struct SN_env*) ; 
 int /*<<< orphan*/  s_11 ; 
 int /*<<< orphan*/  s_12 ; 
 int /*<<< orphan*/  s_13 ; 
 int /*<<< orphan*/  s_14 ; 
 int FUNC8 (int*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct SN_env*) ; 
 int FUNC10 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct SN_env * z) { /* backwardmode */
    int among_var;
    {   int m1 = z->l - z->c; (void)m1; /* do, line 107 */
        z->ket = z->c; /* [, line 108 */
        if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((540704 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab0; /* substring, line 108 */
        among_var = FUNC1(z, a_3, 5);
        if (!(among_var)) goto lab0;
        z->bra = z->c; /* ], line 108 */
        switch (among_var) { /* among, line 108 */
            case 1:
                {   int ret = FUNC3(z); /* call R1, line 110 */
                    if (ret == 0) goto lab0;
                    if (ret < 0) return ret;
                }
                {   int ret = FUNC10(z, 4, s_11); /* <-, line 110 */
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                {   int ret = FUNC6(z); /* call en_ending, line 113 */
                    if (ret == 0) goto lab0;
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                {   int ret = FUNC3(z); /* call R1, line 116 */
                    if (ret == 0) goto lab0;
                    if (ret < 0) return ret;
                }
                if (FUNC2(z, g_v_j, 97, 232, 0)) goto lab0; /* non v_j, line 116 */
                {   int ret = FUNC9(z); /* delete, line 116 */
                    if (ret < 0) return ret;
                }
                break;
        }
    lab0:
        z->c = z->l - m1;
    }
    {   int m2 = z->l - z->c; (void)m2; /* do, line 120 */
        {   int ret = FUNC5(z); /* call e_ending, line 120 */
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m2;
    }
    {   int m3 = z->l - z->c; (void)m3; /* do, line 122 */
        z->ket = z->c; /* [, line 122 */
        if (!(FUNC0(z, 4, s_12))) goto lab2; /* literal, line 122 */
        z->bra = z->c; /* ], line 122 */
        {   int ret = FUNC4(z); /* call R2, line 122 */
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
        {   int m4 = z->l - z->c; (void)m4; /* not, line 122 */
            if (z->c <= z->lb || z->p[z->c - 1] != 'c') goto lab3; /* literal, line 122 */
            z->c--;
            goto lab2;
        lab3:
            z->c = z->l - m4;
        }
        {   int ret = FUNC9(z); /* delete, line 122 */
            if (ret < 0) return ret;
        }
        z->ket = z->c; /* [, line 123 */
        if (!(FUNC0(z, 2, s_13))) goto lab2; /* literal, line 123 */
        z->bra = z->c; /* ], line 123 */
        {   int ret = FUNC6(z); /* call en_ending, line 123 */
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m3;
    }
    {   int m5 = z->l - z->c; (void)m5; /* do, line 126 */
        z->ket = z->c; /* [, line 127 */
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((264336 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab4; /* substring, line 127 */
        among_var = FUNC1(z, a_4, 6);
        if (!(among_var)) goto lab4;
        z->bra = z->c; /* ], line 127 */
        switch (among_var) { /* among, line 127 */
            case 1:
                {   int ret = FUNC4(z); /* call R2, line 129 */
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                {   int ret = FUNC9(z); /* delete, line 129 */
                    if (ret < 0) return ret;
                }
                {   int m6 = z->l - z->c; (void)m6; /* or, line 130 */
                    z->ket = z->c; /* [, line 130 */
                    if (!(FUNC0(z, 2, s_14))) goto lab6; /* literal, line 130 */
                    z->bra = z->c; /* ], line 130 */
                    {   int ret = FUNC4(z); /* call R2, line 130 */
                        if (ret == 0) goto lab6;
                        if (ret < 0) return ret;
                    }
                    {   int m7 = z->l - z->c; (void)m7; /* not, line 130 */
                        if (z->c <= z->lb || z->p[z->c - 1] != 'e') goto lab7; /* literal, line 130 */
                        z->c--;
                        goto lab6;
                    lab7:
                        z->c = z->l - m7;
                    }
                    {   int ret = FUNC9(z); /* delete, line 130 */
                        if (ret < 0) return ret;
                    }
                    goto lab5;
                lab6:
                    z->c = z->l - m6;
                    {   int ret = FUNC7(z); /* call undouble, line 130 */
                        if (ret == 0) goto lab4;
                        if (ret < 0) return ret;
                    }
                }
            lab5:
                break;
            case 2:
                {   int ret = FUNC4(z); /* call R2, line 133 */
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                {   int m8 = z->l - z->c; (void)m8; /* not, line 133 */
                    if (z->c <= z->lb || z->p[z->c - 1] != 'e') goto lab8; /* literal, line 133 */
                    z->c--;
                    goto lab4;
                lab8:
                    z->c = z->l - m8;
                }
                {   int ret = FUNC9(z); /* delete, line 133 */
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                {   int ret = FUNC4(z); /* call R2, line 136 */
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                {   int ret = FUNC9(z); /* delete, line 136 */
                    if (ret < 0) return ret;
                }
                {   int ret = FUNC5(z); /* call e_ending, line 136 */
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                break;
            case 4:
                {   int ret = FUNC4(z); /* call R2, line 139 */
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                {   int ret = FUNC9(z); /* delete, line 139 */
                    if (ret < 0) return ret;
                }
                break;
            case 5:
                {   int ret = FUNC4(z); /* call R2, line 142 */
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                if (!(z->B[0])) goto lab4; /* Boolean test e_found, line 142 */
                {   int ret = FUNC9(z); /* delete, line 142 */
                    if (ret < 0) return ret;
                }
                break;
        }
    lab4:
        z->c = z->l - m5;
    }
    {   int m9 = z->l - z->c; (void)m9; /* do, line 146 */
        if (FUNC2(z, g_v_I, 73, 232, 0)) goto lab9; /* non v_I, line 147 */
        {   int m_test10 = z->l - z->c; /* test, line 148 */
            if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((2129954 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab9; /* among, line 149 */
            if (!(FUNC1(z, a_5, 4))) goto lab9;
            if (FUNC2(z, g_v, 97, 232, 0)) goto lab9; /* non v, line 150 */
            z->c = z->l - m_test10;
        }
        z->ket = z->c; /* [, line 152 */
        {   int ret = FUNC8(z->p, z->c, z->lb, 0, -1);
            if (ret < 0) goto lab9;
            z->c = ret; /* next, line 152 */
        }
        z->bra = z->c; /* ], line 152 */
        {   int ret = FUNC9(z); /* delete, line 152 */
            if (ret < 0) return ret;
        }
    lab9:
        z->c = z->l - m9;
    }
    return 1;
}