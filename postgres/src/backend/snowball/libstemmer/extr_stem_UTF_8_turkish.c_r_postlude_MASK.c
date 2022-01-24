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
struct SN_env {int lb; int c; int l; } ;

/* Variables and functions */
 int FUNC0 (struct SN_env*) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    z->lb = z->c; z->c = z->l; /* backwards, line 451 */

    {   int m1 = z->l - z->c; (void)m1; /* not, line 452 */
        {   int ret = FUNC1(z); /* call is_reserved_word, line 452 */
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
        return 0;
    lab0:
        z->c = z->l - m1;
    }
    {   int m2 = z->l - z->c; (void)m2; /* do, line 453 */
        {   int ret = FUNC0(z); /* call append_U_to_stems_ending_with_d_or_g, line 453 */
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m2;
    }
    {   int m3 = z->l - z->c; (void)m3; /* do, line 454 */
        {   int ret = FUNC2(z); /* call post_process_last_consonants, line 454 */
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m3;
    }
    z->c = z->lb;
    return 1;
}