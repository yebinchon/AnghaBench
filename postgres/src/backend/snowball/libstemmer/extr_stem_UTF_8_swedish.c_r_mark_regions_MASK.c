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
struct SN_env {int* I; int l; int c; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_v ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    z->I[0] = z->l; /* $p1 = <integer expression>, line 28 */
    {   int c_test1 = z->c; /* test, line 29 */
        {   int ret = FUNC2(z->p, z->c, 0, z->l, + 3); /* hop, line 29 */
            if (ret < 0) return 0;
            z->c = ret;
        }
        z->I[1] = z->c; /* setmark x, line 29 */
        z->c = c_test1;
    }
    if (FUNC1(z, g_v, 97, 246, 1) < 0) return 0; /* goto */ /* grouping v, line 30 */
    {    /* gopast */ /* non v, line 30 */
        int ret = FUNC0(z, g_v, 97, 246, 1);
        if (ret < 0) return 0;
        z->c += ret;
    }
    z->I[0] = z->c; /* setmark p1, line 30 */
    /* try, line 31 */
    if (!(z->I[0] < z->I[1])) goto lab0; /* $(<integer expression> < <integer expression>), line 31 */
    z->I[0] = z->I[1]; /* $p1 = <integer expression>, line 31 */
lab0:
    return 1;
}