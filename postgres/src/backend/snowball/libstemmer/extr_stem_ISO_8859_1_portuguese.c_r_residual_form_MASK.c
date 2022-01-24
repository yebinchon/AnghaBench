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
struct SN_env {int ket; int c; int bra; int l; int lb; unsigned char* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_8 ; 
 int FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int /*<<< orphan*/  s_10 ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct SN_env * z) { /* backwardmode */
    int among_var;
    z->ket = z->c; /* [, line 192 */
    among_var = FUNC0(z, a_8, 4); /* substring, line 192 */
    if (!(among_var)) return 0;
    z->bra = z->c; /* ], line 192 */
    switch (among_var) { /* among, line 192 */
        case 1:
            {   int ret = FUNC1(z); /* call RV, line 194 */
                if (ret <= 0) return ret;
            }
            {   int ret = FUNC2(z); /* delete, line 194 */
                if (ret < 0) return ret;
            }
            z->ket = z->c; /* [, line 194 */
            {   int m1 = z->l - z->c; (void)m1; /* or, line 194 */
                if (z->c <= z->lb || z->p[z->c - 1] != 'u') goto lab1; /* literal, line 194 */
                z->c--;
                z->bra = z->c; /* ], line 194 */
                {   int m_test2 = z->l - z->c; /* test, line 194 */
                    if (z->c <= z->lb || z->p[z->c - 1] != 'g') goto lab1; /* literal, line 194 */
                    z->c--;
                    z->c = z->l - m_test2;
                }
                goto lab0;
            lab1:
                z->c = z->l - m1;
                if (z->c <= z->lb || z->p[z->c - 1] != 'i') return 0; /* literal, line 195 */
                z->c--;
                z->bra = z->c; /* ], line 195 */
                {   int m_test3 = z->l - z->c; /* test, line 195 */
                    if (z->c <= z->lb || z->p[z->c - 1] != 'c') return 0; /* literal, line 195 */
                    z->c--;
                    z->c = z->l - m_test3;
                }
            }
        lab0:
            {   int ret = FUNC1(z); /* call RV, line 195 */
                if (ret <= 0) return ret;
            }
            {   int ret = FUNC2(z); /* delete, line 195 */
                if (ret < 0) return ret;
            }
            break;
        case 2:
            {   int ret = FUNC3(z, 1, s_10); /* <-, line 196 */
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}