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
struct SN_env {int bra; int c; int l; int* p; int ket; int* I; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_4 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_5 ; 
 int /*<<< orphan*/  s_6 ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    int among_var;
    z->bra = z->c; /* [, line 162 */
    if (z->c + 1 >= z->l || z->p[z->c + 1] != 101) return 0; /* substring, line 162 */
    among_var = FUNC0(z, a_4, 6);
    if (!(among_var)) return 0;
    z->ket = z->c; /* ], line 162 */
    switch (among_var) { /* among, line 162 */
        case 1:
            {   int ret = FUNC1(z); /* delete, line 163 */
                if (ret < 0) return ret;
            }
            z->I[1] = 2; /* $prefix = <integer expression>, line 163 */
            z->I[0] -= 1; /* $measure -= <integer expression>, line 163 */
            break;
        case 2:
            {   int ret = FUNC2(z, 4, s_5); /* <-, line 164 */
                if (ret < 0) return ret;
            }
            z->I[0] -= 1; /* $measure -= <integer expression>, line 164 */
            break;
        case 3:
            {   int ret = FUNC1(z); /* delete, line 165 */
                if (ret < 0) return ret;
            }
            z->I[1] = 4; /* $prefix = <integer expression>, line 165 */
            z->I[0] -= 1; /* $measure -= <integer expression>, line 165 */
            break;
        case 4:
            {   int ret = FUNC2(z, 4, s_6); /* <-, line 166 */
                if (ret < 0) return ret;
            }
            z->I[1] = 4; /* $prefix = <integer expression>, line 166 */
            z->I[0] -= 1; /* $measure -= <integer expression>, line 166 */
            break;
    }
    return 1;
}