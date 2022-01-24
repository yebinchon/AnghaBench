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
struct TYPE_4__ {int core_num_dim_ix; int /*<<< orphan*/  core_signature; } ;
typedef  TYPE_1__ PyUFuncObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2(PyUFuncObject *ufunc) {
    if (ufunc->core_num_dim_ix != 1) {
        FUNC0(PyExc_TypeError,
                     "%s: axis can only be used with a single shared core "
                     "dimension, not with the %d distinct ones implied by "
                     "signature %s.",
                     FUNC1(ufunc),
                     ufunc->core_num_dim_ix,
                     ufunc->core_signature);
        return -1;
    }
    return 0;
}