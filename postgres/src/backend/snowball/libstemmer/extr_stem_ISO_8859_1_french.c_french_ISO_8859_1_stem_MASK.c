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
struct SN_env {int c; int lb; int l; int ket; char* p; int bra; } ;

/* Variables and functions */
 int FUNC0 (struct SN_env*) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 
 int FUNC5 (struct SN_env*) ; 
 int FUNC6 (struct SN_env*) ; 
 int FUNC7 (struct SN_env*) ; 
 int FUNC8 (struct SN_env*) ; 
 int /*<<< orphan*/  s_33 ; 
 int /*<<< orphan*/  s_34 ; 
 int FUNC9 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

extern int FUNC10(struct SN_env * z) { /* forwardmode */
    {   int c1 = z->c; /* do, line 229 */
        {   int ret = FUNC3(z); /* call prelude, line 229 */
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    /* do, line 230 */
    {   int ret = FUNC1(z); /* call mark_regions, line 230 */
        if (ret == 0) goto lab1;
        if (ret < 0) return ret;
    }
lab1:
    z->lb = z->c; z->c = z->l; /* backwards, line 231 */

    {   int m2 = z->l - z->c; (void)m2; /* do, line 233 */
        {   int m3 = z->l - z->c; (void)m3; /* or, line 243 */
            {   int m4 = z->l - z->c; (void)m4; /* and, line 239 */
                {   int m5 = z->l - z->c; (void)m5; /* or, line 235 */
                    {   int ret = FUNC5(z); /* call standard_suffix, line 235 */
                        if (ret == 0) goto lab6;
                        if (ret < 0) return ret;
                    }
                    goto lab5;
                lab6:
                    z->c = z->l - m5;
                    {   int ret = FUNC0(z); /* call i_verb_suffix, line 236 */
                        if (ret == 0) goto lab7;
                        if (ret < 0) return ret;
                    }
                    goto lab5;
                lab7:
                    z->c = z->l - m5;
                    {   int ret = FUNC8(z); /* call verb_suffix, line 237 */
                        if (ret == 0) goto lab4;
                        if (ret < 0) return ret;
                    }
                }
            lab5:
                z->c = z->l - m4;
                {   int m6 = z->l - z->c; (void)m6; /* try, line 240 */
                    z->ket = z->c; /* [, line 240 */
                    {   int m7 = z->l - z->c; (void)m7; /* or, line 240 */
                        if (z->c <= z->lb || z->p[z->c - 1] != 'Y') goto lab10; /* literal, line 240 */
                        z->c--;
                        z->bra = z->c; /* ], line 240 */
                        {   int ret = FUNC9(z, 1, s_33); /* <-, line 240 */
                            if (ret < 0) return ret;
                        }
                        goto lab9;
                    lab10:
                        z->c = z->l - m7;
                        if (z->c <= z->lb || z->p[z->c - 1] != 0xE7) { z->c = z->l - m6; goto lab8; } /* literal, line 241 */
                        z->c--;
                        z->bra = z->c; /* ], line 241 */
                        {   int ret = FUNC9(z, 1, s_34); /* <-, line 241 */
                            if (ret < 0) return ret;
                        }
                    }
                lab9:
                lab8:
                    ;
                }
            }
            goto lab3;
        lab4:
            z->c = z->l - m3;
            {   int ret = FUNC4(z); /* call residual_suffix, line 244 */
                if (ret == 0) goto lab2;
                if (ret < 0) return ret;
            }
        }
    lab3:
    lab2:
        z->c = z->l - m2;
    }
    {   int m8 = z->l - z->c; (void)m8; /* do, line 249 */
        {   int ret = FUNC7(z); /* call un_double, line 249 */
            if (ret == 0) goto lab11;
            if (ret < 0) return ret;
        }
    lab11:
        z->c = z->l - m8;
    }
    {   int m9 = z->l - z->c; (void)m9; /* do, line 250 */
        {   int ret = FUNC6(z); /* call un_accent, line 250 */
            if (ret == 0) goto lab12;
            if (ret < 0) return ret;
        }
    lab12:
        z->c = z->l - m9;
    }
    z->c = z->lb;
    {   int c10 = z->c; /* do, line 252 */
        {   int ret = FUNC2(z); /* call postlude, line 252 */
            if (ret == 0) goto lab13;
            if (ret < 0) return ret;
        }
    lab13:
        z->c = c10;
    }
    return 1;
}