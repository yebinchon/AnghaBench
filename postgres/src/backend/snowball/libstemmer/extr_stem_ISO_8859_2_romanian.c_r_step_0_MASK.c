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
struct SN_env {int ket; int c; int lb; int* p; int bra; int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_1 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct SN_env*) ; 
 int /*<<< orphan*/  s_10 ; 
 int /*<<< orphan*/  s_4 ; 
 int /*<<< orphan*/  s_5 ; 
 int /*<<< orphan*/  s_6 ; 
 int /*<<< orphan*/  s_7 ; 
 int /*<<< orphan*/  s_8 ; 
 int /*<<< orphan*/  s_9 ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 73 */
    if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((266786 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0; /* substring, line 73 */
    among_var = FUNC1(z, a_1, 16);
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 73 */
    {   int ret = FUNC2(z); /* call R1, line 73 */
        if (ret <= 0) return ret;
    }
    switch (among_var) { /* among, line 73 */
        case 1:
            {   int ret = FUNC3(z); /* delete, line 75 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC4(z, 1, s_4); /* <-, line 77 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            {   int ret = FUNC4(z, 1, s_5); /* <-, line 79 */
                if (ret < 0) return ret;
            }
            break;
        case 4:
            {   int ret = FUNC4(z, 1, s_6); /* <-, line 81 */
                if (ret < 0) return ret;
            }
            break;
        case 5:
            {   int m1 = z->l - z->c; (void)m1; /* not, line 83 */
                if (!(FUNC0(z, 2, s_7))) goto lab0; /* literal, line 83 */
                return 0;
            lab0:
                z->c = z->l - m1;
            }
            {   int ret = FUNC4(z, 1, s_8); /* <-, line 83 */
                if (ret < 0) return ret;
            }
            break;
        case 6:
            {   int ret = FUNC4(z, 2, s_9); /* <-, line 85 */
                if (ret < 0) return ret;
            }
            break;
        case 7:
            {   int ret = FUNC4(z, 3, s_10); /* <-, line 87 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}