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
struct SN_env {int c; int bra; int ket; int /*<<< orphan*/  l; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_0 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_4 ; 
 int /*<<< orphan*/  s_5 ; 
 int /*<<< orphan*/  s_6 ; 
 int /*<<< orphan*/  s_7 ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    int among_var;
    while(1) { /* repeat, line 60 */
        int c1 = z->c;
        z->bra = z->c; /* [, line 62 */
        among_var = FUNC0(z, a_0, 6); /* substring, line 62 */
        if (!(among_var)) goto lab0;
        z->ket = z->c; /* ], line 62 */
        switch (among_var) { /* among, line 62 */
            case 1:
                {   int ret = FUNC2(z, 1, s_4); /* <-, line 63 */
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                {   int ret = FUNC2(z, 1, s_5); /* <-, line 64 */
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                {   int ret = FUNC2(z, 1, s_6); /* <-, line 65 */
                    if (ret < 0) return ret;
                }
                break;
            case 4:
                {   int ret = FUNC2(z, 1, s_7); /* <-, line 66 */
                    if (ret < 0) return ret;
                }
                break;
            case 5:
                {   int ret = FUNC1(z->p, z->c, 0, z->l, 1);
                    if (ret < 0) goto lab0;
                    z->c = ret; /* next, line 68 */
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