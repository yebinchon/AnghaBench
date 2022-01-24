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
 int /*<<< orphan*/  a_0 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_0 ; 
 int /*<<< orphan*/  s_1 ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 25 */
    if (z->c <= z->lb || z->p[z->c - 1] != 115) return 0; /* substring, line 25 */
    among_var = FUNC0(z, a_0, 4);
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 25 */
    switch (among_var) { /* among, line 25 */
        case 1:
            {   int ret = FUNC2(z, 2, s_0); /* <-, line 26 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC2(z, 1, s_1); /* <-, line 27 */
                if (ret < 0) return ret;
            }
            break;
        case 3:
            {   int ret = FUNC1(z); /* delete, line 29 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}