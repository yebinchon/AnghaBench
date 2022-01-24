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
 int /*<<< orphan*/  a_2 ; 
 int /*<<< orphan*/  a_3 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int /*<<< orphan*/  s_10 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 87 */
    if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((33314 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0; /* substring, line 87 */
    if (!(FUNC0(z, a_2, 37))) return 0;
    z->bra = z->c; /* ], line 87 */
    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 111 && z->p[z->c - 1] != 114)) return 0; /* among, line 97 */
    among_var = FUNC0(z, a_3, 5);
    if (!(among_var)) return 0;
    {   int ret = FUNC1(z); /* call RV, line 97 */
        if (ret <= 0) return ret;
    }
    switch (among_var) { /* among, line 97 */
        case 1:
            {   int ret = FUNC2(z); /* delete, line 98 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC3(z, 1, s_10); /* <-, line 99 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}