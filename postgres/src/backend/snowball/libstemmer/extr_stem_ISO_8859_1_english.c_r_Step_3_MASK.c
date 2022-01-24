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
struct SN_env {int ket; int c; int lb; int* p; int bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_6 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int /*<<< orphan*/  s_23 ; 
 int /*<<< orphan*/  s_24 ; 
 int /*<<< orphan*/  s_25 ; 
 int /*<<< orphan*/  s_26 ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 127 */
    if (z->c - 2 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((528928 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0; /* substring, line 127 */
    among_var = FUNC0(z, a_6, 9);
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 127 */
    {   int ret = FUNC1(z); /* call R1, line 127 */
        if (ret <= 0) return ret;
    }
    switch (among_var) { /* among, line 127 */
        case 1:
            {   int ret = FUNC4(z, 4, s_23); /* <-, line 128 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC4(z, 3, s_24); /* <-, line 129 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            {   int ret = FUNC4(z, 2, s_25); /* <-, line 130 */
                if (ret < 0) return ret;
            }
            break;
        case 4:
            {   int ret = FUNC4(z, 2, s_26); /* <-, line 132 */
                if (ret < 0) return ret;
            }
            break;
        case 5:
            {   int ret = FUNC3(z); /* delete, line 134 */
                if (ret < 0) return ret;
            }
            break;
        case 6:
            {   int ret = FUNC2(z); /* call R2, line 136 */
                if (ret <= 0) return ret;
            }
            {   int ret = FUNC3(z); /* delete, line 136 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}