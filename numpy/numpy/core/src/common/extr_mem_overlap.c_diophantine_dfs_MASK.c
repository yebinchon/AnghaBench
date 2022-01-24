#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_int64 ;
typedef  int /*<<< orphan*/  npy_extint128_t ;
typedef  scalar_t__ mem_overlap_t ;
struct TYPE_4__ {int a; int ub; } ;
typedef  TYPE_1__ diophantine_term_t ;
typedef  int /*<<< orphan*/  Py_ssize_t ;

/* Variables and functions */
 scalar_t__ MEM_OVERLAP_NO ; 
 scalar_t__ MEM_OVERLAP_OVERFLOW ; 
 scalar_t__ MEM_OVERLAP_TOO_HARD ; 
 scalar_t__ MEM_OVERLAP_YES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int,char*) ; 
 int FUNC7 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static mem_overlap_t
FUNC11(unsigned int n,
                unsigned int v,
                diophantine_term_t *E,
                diophantine_term_t *Ep,
                npy_int64 *Gamma, npy_int64 *Epsilon,
                npy_int64 b,
                Py_ssize_t max_work,
                int require_ub_nontrivial,
                npy_int64 *x,
                Py_ssize_t *count)
{
    npy_int64 a_gcd, gamma, epsilon, a1, u1, a2, u2, c, r, c1, c2, t, t_l, t_u, b2, x1, x2;
    npy_extint128_t x10, x20, t_l1, t_l2, t_u1, t_u2;
    mem_overlap_t res;
    char overflow = 0;

    if (max_work >= 0 && *count >= max_work) {
        return MEM_OVERLAP_TOO_HARD;
    }

    /* Fetch precomputed values for the reduced problem */
    if (v == 1) {
        a1 = E[0].a;
        u1 = E[0].ub;
    }
    else {
        a1 = Ep[v-2].a;
        u1 = Ep[v-2].ub;
    }

    a2 = E[v].a;
    u2 = E[v].ub;

    a_gcd = Ep[v-1].a;
    gamma = Gamma[v-1];
    epsilon = Epsilon[v-1];

    /* Generate set of allowed solutions */
    c = b / a_gcd;
    r = b % a_gcd;
    if (r != 0) {
        ++*count;
        return MEM_OVERLAP_NO;
    }

    c1 = a2 / a_gcd;
    c2 = a1 / a_gcd;

    /*
      The set to enumerate is:
      x1 = gamma*c + c1*t
      x2 = epsilon*c - c2*t
      t integer
      0 <= x1 <= u1
      0 <= x2 <= u2
      and we have c, c1, c2 >= 0
     */

    x10 = FUNC4(gamma, c);
    x20 = FUNC4(epsilon, c);

    t_l1 = FUNC1(FUNC5(x10), c1);
    t_l2 = FUNC1(FUNC8(x20, FUNC9(u2), &overflow), c2);

    t_u1 = FUNC2(FUNC8(FUNC9(u1), x10, &overflow), c1);
    t_u2 = FUNC2(x20, c2);

    if (overflow) {
        return MEM_OVERLAP_OVERFLOW;
    }

    if (FUNC3(t_l2, t_l1)) {
        t_l1 = t_l2;
    }

    if (FUNC3(t_u1, t_u2)) {
        t_u1 = t_u2;
    }

    if (FUNC3(t_l1, t_u1)) {
        ++*count;
        return MEM_OVERLAP_NO;
    }

    t_l = FUNC10(t_l1, &overflow);
    t_u = FUNC10(t_u1, &overflow);

    x10 = FUNC0(x10, FUNC4(c1, t_l), &overflow);
    x20 = FUNC8(x20, FUNC4(c2, t_l), &overflow);

    t_u = FUNC7(t_u, t_l, &overflow);
    t_l = 0;
    x1 = FUNC10(x10, &overflow);
    x2 = FUNC10(x20, &overflow);

    if (overflow) {
        return MEM_OVERLAP_OVERFLOW;
    }

    /* The bounds t_l, t_u ensure the x computed below do not overflow */

    if (v == 1) {
        /* Base case */
        if (t_u >= t_l) {
            x[0] = x1 + c1*t_l;
            x[1] = x2 - c2*t_l;
            if (require_ub_nontrivial) {
                unsigned int j;
                int is_ub_trivial;

                is_ub_trivial = 1;
                for (j = 0; j < n; ++j) {
                    if (x[j] != E[j].ub/2) {
                        is_ub_trivial = 0;
                        break;
                    }
                }

                if (is_ub_trivial) {
                    /* Ignore 'trivial' solution */
                    ++*count;
                    return MEM_OVERLAP_NO;
                }
            }
            return MEM_OVERLAP_YES;
        }
        ++*count;
        return MEM_OVERLAP_NO;
    }
    else {
        /* Recurse to all candidates */
        for (t = t_l; t <= t_u; ++t) {
            x[v] = x2 - c2*t;

            /* b2 = b - a2*x[v]; */
            b2 = FUNC7(b, FUNC6(a2, x[v], &overflow), &overflow);
            if (overflow) {
                return MEM_OVERLAP_OVERFLOW;
            }

            res = FUNC11(n, v-1, E, Ep, Gamma, Epsilon,
                                  b2, max_work, require_ub_nontrivial,
                                  x, count);
            if (res != MEM_OVERLAP_NO) {
                return res;
            }
        }
        ++*count;
        return MEM_OVERLAP_NO;
    }
}