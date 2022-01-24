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
struct SN_env {int c; int lb; int l; scalar_t__* B; } ;

/* Variables and functions */
 int FUNC0 (struct SN_env*) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 
 int FUNC5 (struct SN_env*) ; 
 int FUNC6 (struct SN_env*) ; 
 int FUNC7 (struct SN_env*) ; 

extern int FUNC8(struct SN_env * z) { /* forwardmode */
    {   int c1 = z->c; /* do, line 186 */
        {   int ret = FUNC2(z); /* call mark_regions, line 186 */
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    z->B[0] = 0; /* unset ending_removed, line 187 */
    z->lb = z->c; z->c = z->l; /* backwards, line 188 */

    {   int m2 = z->l - z->c; (void)m2; /* do, line 189 */
        {   int ret = FUNC4(z); /* call particle_etc, line 189 */
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m2;
    }
    {   int m3 = z->l - z->c; (void)m3; /* do, line 190 */
        {   int ret = FUNC5(z); /* call possessive, line 190 */
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m3;
    }
    {   int m4 = z->l - z->c; (void)m4; /* do, line 191 */
        {   int ret = FUNC0(z); /* call case_ending, line 191 */
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
    lab3:
        z->c = z->l - m4;
    }
    {   int m5 = z->l - z->c; (void)m5; /* do, line 192 */
        {   int ret = FUNC3(z); /* call other_endings, line 192 */
            if (ret == 0) goto lab4;
            if (ret < 0) return ret;
        }
    lab4:
        z->c = z->l - m5;
    }
    /* or, line 193 */
    if (!(z->B[0])) goto lab6; /* Boolean test ending_removed, line 193 */
    {   int m6 = z->l - z->c; (void)m6; /* do, line 193 */
        {   int ret = FUNC1(z); /* call i_plural, line 193 */
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = z->l - m6;
    }
    goto lab5;
lab6:
    {   int m7 = z->l - z->c; (void)m7; /* do, line 193 */
        {   int ret = FUNC6(z); /* call t_plural, line 193 */
            if (ret == 0) goto lab8;
            if (ret < 0) return ret;
        }
    lab8:
        z->c = z->l - m7;
    }
lab5:
    {   int m8 = z->l - z->c; (void)m8; /* do, line 194 */
        {   int ret = FUNC7(z); /* call tidy, line 194 */
            if (ret == 0) goto lab9;
            if (ret < 0) return ret;
        }
    lab9:
        z->c = z->l - m8;
    }
    z->c = z->lb;
    return 1;
}