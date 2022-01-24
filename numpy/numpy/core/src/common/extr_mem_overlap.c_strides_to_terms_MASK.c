#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ a; int ub; } ;
typedef  TYPE_1__ diophantine_term_t ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(PyArrayObject *arr, diophantine_term_t *terms,
                 unsigned int *nterms, int skip_empty)
{
    int i;

    for (i = 0; i < FUNC1(arr); ++i) {
        if (skip_empty) {
            if (FUNC0(arr, i) <= 1 || FUNC2(arr, i) == 0) {
                continue;
            }
        }

        terms[*nterms].a = FUNC2(arr, i);

        if (terms[*nterms].a < 0) {
            terms[*nterms].a = -terms[*nterms].a;
        }

        if (terms[*nterms].a < 0) {
            /* integer overflow */
            return 1;
        }

        terms[*nterms].ub = FUNC0(arr, i) - 1;
        ++*nterms;
    }

    return 0;
}