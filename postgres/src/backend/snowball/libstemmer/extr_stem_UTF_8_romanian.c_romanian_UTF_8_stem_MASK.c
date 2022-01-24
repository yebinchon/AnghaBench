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
struct SN_env {int c; int lb; int l; int /*<<< orphan*/ * B; } ;

/* Variables and functions */
 int FUNC0 (struct SN_env*) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 
 int FUNC5 (struct SN_env*) ; 
 int FUNC6 (struct SN_env*) ; 

extern int FUNC7(struct SN_env * z) { /* forwardmode */
    {   int c1 = z->c; /* do, line 226 */
        {   int ret = FUNC2(z); /* call prelude, line 226 */
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    /* do, line 227 */
    {   int ret = FUNC0(z); /* call mark_regions, line 227 */
        if (ret == 0) goto lab1;
        if (ret < 0) return ret;
    }
lab1:
    z->lb = z->c; z->c = z->l; /* backwards, line 228 */

    {   int m2 = z->l - z->c; (void)m2; /* do, line 229 */
        {   int ret = FUNC4(z); /* call step_0, line 229 */
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m2;
    }
    {   int m3 = z->l - z->c; (void)m3; /* do, line 230 */
        {   int ret = FUNC3(z); /* call standard_suffix, line 230 */
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
    lab3:
        z->c = z->l - m3;
    }
    {   int m4 = z->l - z->c; (void)m4; /* do, line 231 */
        {   int m5 = z->l - z->c; (void)m5; /* or, line 231 */
            if (!(z->B[0])) goto lab6; /* Boolean test standard_suffix_removed, line 231 */
            goto lab5;
        lab6:
            z->c = z->l - m5;
            {   int ret = FUNC5(z); /* call verb_suffix, line 231 */
                if (ret == 0) goto lab4;
                if (ret < 0) return ret;
            }
        }
    lab5:
    lab4:
        z->c = z->l - m4;
    }
    {   int m6 = z->l - z->c; (void)m6; /* do, line 232 */
        {   int ret = FUNC6(z); /* call vowel_suffix, line 232 */
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = z->l - m6;
    }
    z->c = z->lb;
    {   int c7 = z->c; /* do, line 234 */
        {   int ret = FUNC1(z); /* call postlude, line 234 */
            if (ret == 0) goto lab8;
            if (ret < 0) return ret;
        }
    lab8:
        z->c = c7;
    }
    return 1;
}