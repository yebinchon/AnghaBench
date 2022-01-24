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
 int /*<<< orphan*/  a_1 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int /*<<< orphan*/  s_0 ; 
 int /*<<< orphan*/  s_1 ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 61 */
    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 161 && z->p[z->c - 1] != 169)) return 0; /* substring, line 61 */
    among_var = FUNC0(z, a_1, 2);
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 61 */
    {   int ret = FUNC1(z); /* call R1, line 61 */
        if (ret <= 0) return ret;
    }
    switch (among_var) { /* among, line 61 */
        case 1:
            {   int ret = FUNC2(z, 1, s_0); /* <-, line 62 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC2(z, 1, s_1); /* <-, line 63 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}