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
struct SN_env {int /*<<< orphan*/  c; int /*<<< orphan*/  bra; int /*<<< orphan*/  ket; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_1 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 104 */
    among_var = FUNC0(z, a_1, 16); /* substring, line 104 */
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 104 */
    switch (among_var) { /* among, line 104 */
        case 1:
            {   int ret = FUNC1(z); /* call R1, line 108 */
                if (ret <= 0) return ret;
            }
            {   int ret = FUNC3(z); /* delete, line 108 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC2(z); /* call R2, line 110 */
                if (ret <= 0) return ret;
            }
            {   int ret = FUNC3(z); /* delete, line 110 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}