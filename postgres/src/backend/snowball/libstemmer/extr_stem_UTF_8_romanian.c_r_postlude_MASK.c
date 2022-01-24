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
struct SN_env {int c; int bra; int l; int* p; int ket; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_0 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_2 ; 
 int /*<<< orphan*/  s_3 ; 
 int FUNC1 (int*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    int among_var;
    while(1) { /* repeat, line 56 */
        int c1 = z->c;
        z->bra = z->c; /* [, line 58 */
        if (z->c >= z->l || (z->p[z->c + 0] != 73 && z->p[z->c + 0] != 85)) among_var = 3; else /* substring, line 58 */
        among_var = FUNC0(z, a_0, 3);
        if (!(among_var)) goto lab0;
        z->ket = z->c; /* ], line 58 */
        switch (among_var) { /* among, line 58 */
            case 1:
                {   int ret = FUNC2(z, 1, s_2); /* <-, line 59 */
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                {   int ret = FUNC2(z, 1, s_3); /* <-, line 60 */
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                {   int ret = FUNC1(z->p, z->c, 0, z->l, 1);
                    if (ret < 0) goto lab0;
                    z->c = ret; /* next, line 61 */
                }
                break;
        }
        continue;
    lab0:
        z->c = c1;
        break;
    }
    return 1;
}