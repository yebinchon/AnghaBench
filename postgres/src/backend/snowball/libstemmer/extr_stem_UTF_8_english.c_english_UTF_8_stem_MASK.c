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
struct SN_env {int c; int l; int lb; int /*<<< orphan*/  p; } ;

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
 int FUNC9 (struct SN_env*) ; 
 int FUNC10 (struct SN_env*) ; 
 int FUNC11 (struct SN_env*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

extern int FUNC13(struct SN_env * z) { /* forwardmode */
    {   int c1 = z->c; /* or, line 207 */
        {   int ret = FUNC7(z); /* call exception1, line 207 */
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = c1;
        {   int c2 = z->c; /* not, line 208 */
            {   int ret = FUNC12(z->p, z->c, 0, z->l, + 3); /* hop, line 208 */
                if (ret < 0) goto lab3;
                z->c = ret;
            }
            goto lab2;
        lab3:
            z->c = c2;
        }
        goto lab0;
    lab2:
        z->c = c1;
        /* do, line 209 */
        {   int ret = FUNC11(z); /* call prelude, line 209 */
            if (ret == 0) goto lab4;
            if (ret < 0) return ret;
        }
    lab4:
        /* do, line 210 */
        {   int ret = FUNC9(z); /* call mark_regions, line 210 */
            if (ret == 0) goto lab5;
            if (ret < 0) return ret;
        }
    lab5:
        z->lb = z->c; z->c = z->l; /* backwards, line 211 */

        {   int m3 = z->l - z->c; (void)m3; /* do, line 213 */
            {   int ret = FUNC0(z); /* call Step_1a, line 213 */
                if (ret == 0) goto lab6;
                if (ret < 0) return ret;
            }
        lab6:
            z->c = z->l - m3;
        }
        {   int m4 = z->l - z->c; (void)m4; /* or, line 215 */
            {   int ret = FUNC8(z); /* call exception2, line 215 */
                if (ret == 0) goto lab8;
                if (ret < 0) return ret;
            }
            goto lab7;
        lab8:
            z->c = z->l - m4;
            {   int m5 = z->l - z->c; (void)m5; /* do, line 217 */
                {   int ret = FUNC1(z); /* call Step_1b, line 217 */
                    if (ret == 0) goto lab9;
                    if (ret < 0) return ret;
                }
            lab9:
                z->c = z->l - m5;
            }
            {   int m6 = z->l - z->c; (void)m6; /* do, line 218 */
                {   int ret = FUNC2(z); /* call Step_1c, line 218 */
                    if (ret == 0) goto lab10;
                    if (ret < 0) return ret;
                }
            lab10:
                z->c = z->l - m6;
            }
            {   int m7 = z->l - z->c; (void)m7; /* do, line 220 */
                {   int ret = FUNC3(z); /* call Step_2, line 220 */
                    if (ret == 0) goto lab11;
                    if (ret < 0) return ret;
                }
            lab11:
                z->c = z->l - m7;
            }
            {   int m8 = z->l - z->c; (void)m8; /* do, line 221 */
                {   int ret = FUNC4(z); /* call Step_3, line 221 */
                    if (ret == 0) goto lab12;
                    if (ret < 0) return ret;
                }
            lab12:
                z->c = z->l - m8;
            }
            {   int m9 = z->l - z->c; (void)m9; /* do, line 222 */
                {   int ret = FUNC5(z); /* call Step_4, line 222 */
                    if (ret == 0) goto lab13;
                    if (ret < 0) return ret;
                }
            lab13:
                z->c = z->l - m9;
            }
            {   int m10 = z->l - z->c; (void)m10; /* do, line 224 */
                {   int ret = FUNC6(z); /* call Step_5, line 224 */
                    if (ret == 0) goto lab14;
                    if (ret < 0) return ret;
                }
            lab14:
                z->c = z->l - m10;
            }
        }
    lab7:
        z->c = z->lb;
        {   int c11 = z->c; /* do, line 227 */
            {   int ret = FUNC10(z); /* call postlude, line 227 */
                if (ret == 0) goto lab15;
                if (ret < 0) return ret;
            }
        lab15:
            z->c = c11;
        }
    }
lab0:
    return 1;
}