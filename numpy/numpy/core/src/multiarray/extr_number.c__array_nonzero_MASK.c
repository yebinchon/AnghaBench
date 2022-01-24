#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_intp ;
struct TYPE_4__ {TYPE_1__* f; } ;
struct TYPE_3__ {int (* nonzero ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(PyArrayObject *mp)
{
    npy_intp n;

    n = FUNC4(mp);
    if (n == 1) {
        int res;
        if (FUNC1(" while converting array to bool")) {
            return -1;
        }
        res = FUNC3(mp)->f->nonzero(FUNC2(mp), mp);
        /* nonzero has no way to indicate an error, but one can occur */
        if (FUNC5()) {
            res = -1;
        }
        FUNC7();
        return res;
    }
    else if (n == 0) {
        /* 2017-09-25, 1.14 */
        if (FUNC0("The truth value of an empty array is ambiguous. "
                      "Returning False, but in future this will result in an error. "
                      "Use `array.size > 0` to check that an array is not empty.") < 0) {
            return -1;
        }
        return 0;
    }
    else {
        FUNC6(PyExc_ValueError,
                        "The truth value of an array "
                        "with more than one element is ambiguous. "
                        "Use a.any() or a.all()");
        return -1;
    }
}