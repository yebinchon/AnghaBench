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
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  MatrixShape ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _column ; 
 int /*<<< orphan*/  _matrix ; 
 int /*<<< orphan*/  _row ; 
 int /*<<< orphan*/  _scalar ; 

__attribute__((used)) static MatrixShape
FUNC2(PyArrayObject *array)
{
    switch (FUNC1(array)) {
        case 0:
            return _scalar;
        case 1:
            if (FUNC0(array, 0) > 1)
                return _column;
            return _scalar;
        case 2:
            if (FUNC0(array, 0) > 1) {
                if (FUNC0(array, 1) == 1)
                    return _column;
                else
                    return _matrix;
            }
            if (FUNC0(array, 1) == 1)
                return _scalar;
            return _row;
    }
    return _matrix;
}