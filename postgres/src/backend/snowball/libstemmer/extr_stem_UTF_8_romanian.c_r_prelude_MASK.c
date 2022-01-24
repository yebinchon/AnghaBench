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
struct SN_env {int c; int bra; int l; unsigned char* p; size_t ket; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_v ; 
 scalar_t__ FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_0 ; 
 int /*<<< orphan*/  s_1 ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* forwardmode */
    while(1) { /* repeat, line 32 */
        int c1 = z->c;
        while(1) { /* goto, line 32 */
            int c2 = z->c;
            if (FUNC0(z, g_v, 97, 259, 0)) goto lab1; /* grouping v, line 33 */
            z->bra = z->c; /* [, line 33 */
            {   int c3 = z->c; /* or, line 33 */
                if (z->c == z->l || z->p[z->c] != 'u') goto lab3; /* literal, line 33 */
                z->c++;
                z->ket = z->c; /* ], line 33 */
                if (FUNC0(z, g_v, 97, 259, 0)) goto lab3; /* grouping v, line 33 */
                {   int ret = FUNC2(z, 1, s_0); /* <-, line 33 */
                    if (ret < 0) return ret;
                }
                goto lab2;
            lab3:
                z->c = c3;
                if (z->c == z->l || z->p[z->c] != 'i') goto lab1; /* literal, line 34 */
                z->c++;
                z->ket = z->c; /* ], line 34 */
                if (FUNC0(z, g_v, 97, 259, 0)) goto lab1; /* grouping v, line 34 */
                {   int ret = FUNC2(z, 1, s_1); /* <-, line 34 */
                    if (ret < 0) return ret;
                }
            }
        lab2:
            z->c = c2;
            break;
        lab1:
            z->c = c2;
            {   int ret = FUNC1(z->p, z->c, 0, z->l, 1);
                if (ret < 0) goto lab0;
                z->c = ret; /* goto, line 32 */
            }
        }
        continue;
    lab0:
        z->c = c1;
        break;
    }
    return 1;
}