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
struct SN_env {int l; int c; int /*<<< orphan*/  lb; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_U ; 
 int /*<<< orphan*/  g_vowel ; 
 scalar_t__ FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    {   int m1 = z->l - z->c; (void)m1; /* or, line 159 */
        if (FUNC0(z, g_U, 105, 305, 0)) goto lab1; /* grouping U, line 158 */
        {   int m_test2 = z->l - z->c; /* test, line 158 */
            if (FUNC1(z, g_vowel, 97, 305, 0)) goto lab1; /* non vowel, line 158 */
            z->c = z->l - m_test2;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        {   int m3 = z->l - z->c; (void)m3; /* not, line 160 */
            {   int m_test4 = z->l - z->c; /* test, line 160 */
                if (FUNC0(z, g_U, 105, 305, 0)) goto lab2; /* grouping U, line 160 */
                z->c = z->l - m_test4;
            }
            return 0;
        lab2:
            z->c = z->l - m3;
        }
        {   int m_test5 = z->l - z->c; /* test, line 160 */
            {   int ret = FUNC2(z->p, z->c, z->lb, 0, -1);
                if (ret < 0) return 0;
                z->c = ret; /* next, line 160 */
            }
            if (FUNC1(z, g_vowel, 97, 305, 0)) return 0; /* non vowel, line 160 */
            z->c = z->l - m_test5;
        }
    }
lab0:
    return 1;
}