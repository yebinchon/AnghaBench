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
struct SN_env {int ket; int c; int l; int bra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_v ; 
 scalar_t__ FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_34 ; 
 int /*<<< orphan*/  s_35 ; 
 int /*<<< orphan*/  s_36 ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    {   int i = 1;
        while(1) { /* atleast, line 222 */
            if (FUNC1(z, g_v, 97, 251, 0)) goto lab0; /* non v, line 222 */
            i--;
            continue;
        lab0:
            break;
        }
        if (i > 0) return 0;
    }
    z->ket = z->c; /* [, line 223 */
    {   int m1 = z->l - z->c; (void)m1; /* or, line 223 */
        if (!(FUNC0(z, 2, s_34))) goto lab2; /* literal, line 223 */
        goto lab1;
    lab2:
        z->c = z->l - m1;
        if (!(FUNC0(z, 2, s_35))) return 0; /* literal, line 223 */
    }
lab1:
    z->bra = z->c; /* ], line 223 */
    {   int ret = FUNC2(z, 1, s_36); /* <-, line 223 */
        if (ret < 0) return ret;
    }
    return 1;
}