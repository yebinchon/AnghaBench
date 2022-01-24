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
struct SN_env {int c; int lb; int l; } ;

/* Variables and functions */
 int FUNC0 (struct SN_env*) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 
 int FUNC5 (struct SN_env*) ; 
 int FUNC6 (struct SN_env*) ; 

extern int FUNC7(struct SN_env * z) { /* forwardmode */
    {   int c1 = z->c; /* do, line 182 */
        {   int ret = FUNC3(z); /* call prelude, line 182 */
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    /* do, line 183 */
    {   int ret = FUNC1(z); /* call mark_regions, line 183 */
        if (ret == 0) goto lab1;
        if (ret < 0) return ret;
    }
lab1:
    z->lb = z->c; z->c = z->l; /* backwards, line 184 */

    {   int m2 = z->l - z->c; (void)m2; /* do, line 185 */
        {   int ret = FUNC0(z); /* call attached_pronoun, line 185 */
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m2;
    }
    {   int m3 = z->l - z->c; (void)m3; /* do, line 186 */
        {   int m4 = z->l - z->c; (void)m4; /* or, line 186 */
            {   int ret = FUNC4(z); /* call standard_suffix, line 186 */
                if (ret == 0) goto lab5;
                if (ret < 0) return ret;
            }
            goto lab4;
        lab5:
            z->c = z->l - m4;
            {   int ret = FUNC5(z); /* call verb_suffix, line 186 */
                if (ret == 0) goto lab3;
                if (ret < 0) return ret;
            }
        }
    lab4:
    lab3:
        z->c = z->l - m3;
    }
    {   int m5 = z->l - z->c; (void)m5; /* do, line 187 */
        {   int ret = FUNC6(z); /* call vowel_suffix, line 187 */
            if (ret == 0) goto lab6;
            if (ret < 0) return ret;
        }
    lab6:
        z->c = z->l - m5;
    }
    z->c = z->lb;
    {   int c6 = z->c; /* do, line 189 */
        {   int ret = FUNC2(z); /* call postlude, line 189 */
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = c6;
    }
    return 1;
}