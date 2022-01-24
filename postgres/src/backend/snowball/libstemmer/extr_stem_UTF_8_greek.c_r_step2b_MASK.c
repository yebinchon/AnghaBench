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
struct SN_env {int ket; int c; int lb; int* p; int bra; scalar_t__* S; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_31 ; 
 int /*<<< orphan*/  a_32 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  s_66 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct SN_env*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct SN_env * z) { /* backwardmode */
    z->ket = z->c; /* [, line 375 */
    if (z->c - 7 <= z->lb || (z->p[z->c - 1] != 131 && z->p[z->c - 1] != 189)) return 0; /* substring, line 375 */
    if (!(FUNC0(z, a_31, 2))) return 0;
    z->bra = z->c; /* ], line 375 */
    {   int ret = FUNC2(z); /* delete, line 376 */
        if (ret < 0) return ret;
    }
    z->ket = z->c; /* [, line 378 */
    if (z->c - 3 <= z->lb || (z->p[z->c - 1] != 128 && z->p[z->c - 1] != 187)) return 0; /* substring, line 378 */
    if (!(FUNC0(z, a_32, 8))) return 0;
    z->bra = z->c; /* ], line 378 */
    z->S[0] = FUNC4(z, z->S[0]); /* -> s, line 379 */
    if (z->S[0] == 0) return -1; /* -> s, line 379 */
    {   int ret = FUNC3(z, 4, s_66); /* <-, line 379 */
        if (ret < 0) return ret;
    }
    {   int ret;
        {   int saved_c = z->c;
            ret = FUNC1(z, z->c, z->c, z->S[0]); /* <+ s, line 379 */
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}