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
 int /*<<< orphan*/  a_1 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_10 ; 
 int /*<<< orphan*/  s_11 ; 
 int /*<<< orphan*/  s_7 ; 
 int /*<<< orphan*/  s_8 ; 
 int /*<<< orphan*/  s_9 ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    int among_var;
    while(1) { /* repeat, line 79 */
        int c1 = z->c;
        z->bra = z->c; /* [, line 81 */
        if (z->c >= z->l || z->p[z->c + 0] >> 5 != 2 || !((35652352 >> (z->p[z->c + 0] & 0x1f)) & 1)) among_var = 7; else /* substring, line 81 */
        among_var = FUNC0(z, a_1, 7);
        if (!(among_var)) goto lab0;
        z->ket = z->c; /* ], line 81 */
        switch (among_var) { /* among, line 81 */
            case 1:
                {   int ret = FUNC2(z, 1, s_7); /* <-, line 82 */
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                {   int ret = FUNC2(z, 1, s_8); /* <-, line 83 */
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                {   int ret = FUNC2(z, 1, s_9); /* <-, line 84 */
                    if (ret < 0) return ret;
                }
                break;
            case 4:
                {   int ret = FUNC2(z, 1, s_10); /* <-, line 85 */
                    if (ret < 0) return ret;
                }
                break;
            case 5:
                {   int ret = FUNC2(z, 1, s_11); /* <-, line 86 */
                    if (ret < 0) return ret;
                }
                break;
            case 6:
                {   int ret = FUNC1(z); /* delete, line 87 */
                    if (ret < 0) return ret;
                }
                break;
            case 7:
                if (z->c >= z->l) goto lab0;
                z->c++; /* next, line 88 */
                break;
        }
        continue;
    lab0:
        z->c = c1;
        break;
    }
    return 1;
}