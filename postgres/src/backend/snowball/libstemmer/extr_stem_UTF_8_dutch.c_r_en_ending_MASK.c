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
struct SN_env {int l; int c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_v ; 
 scalar_t__ FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int /*<<< orphan*/  s_10 ; 
 int FUNC4 (struct SN_env*) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    {   int ret = FUNC2(z); /* call R1, line 102 */
        if (ret <= 0) return ret;
    }
    {   int m1 = z->l - z->c; (void)m1; /* and, line 102 */
        if (FUNC1(z, g_v, 97, 232, 0)) return 0; /* non v, line 102 */
        z->c = z->l - m1;
        {   int m2 = z->l - z->c; (void)m2; /* not, line 102 */
            if (!(FUNC0(z, 3, s_10))) goto lab0; /* literal, line 102 */
            return 0;
        lab0:
            z->c = z->l - m2;
        }
    }
    {   int ret = FUNC4(z); /* delete, line 102 */
        if (ret < 0) return ret;
    }
    {   int ret = FUNC3(z); /* call undouble, line 103 */
        if (ret <= 0) return ret;
    }
    return 1;
}