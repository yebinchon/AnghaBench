#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_longdouble ;
typedef  int /*<<< orphan*/  npy_half ;
typedef  int /*<<< orphan*/  npy_float ;
typedef  int /*<<< orphan*/  npy_double ;
typedef  int /*<<< orphan*/  TrimMode ;
struct TYPE_14__ {int scientific; int precision; int sign; int digits_left; int digits_right; int exp_digits; int /*<<< orphan*/  trim_mode; int /*<<< orphan*/  cutoff_mode; int /*<<< orphan*/  digit_mode; } ;
struct TYPE_13__ {int /*<<< orphan*/  obval; } ;
struct TYPE_12__ {int /*<<< orphan*/  obval; } ;
struct TYPE_11__ {int /*<<< orphan*/  obval; } ;
struct TYPE_10__ {int /*<<< orphan*/  obval; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyLongDoubleScalarObject ;
typedef  TYPE_2__ PyHalfScalarObject ;
typedef  TYPE_3__ PyFloatScalarObject ;
typedef  TYPE_4__ PyDoubleScalarObject ;
typedef  TYPE_5__ Dragon4_Options ;
typedef  int /*<<< orphan*/  DigitMode ;

/* Variables and functions */
 int /*<<< orphan*/  CutoffMode_TotalLength ; 
 int /*<<< orphan*/  Double ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  Float ; 
 int /*<<< orphan*/  Half ; 
 int /*<<< orphan*/  LongDouble ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

PyObject *
FUNC7(PyObject *obj, DigitMode digit_mode, int precision,
                   int sign, TrimMode trim, int pad_left, int exp_digits)
{
    npy_double val;
    Dragon4_Options opt;

    opt.scientific = 1;
    opt.digit_mode = digit_mode;
    opt.cutoff_mode = CutoffMode_TotalLength;
    opt.precision = precision;
    opt.sign = sign;
    opt.trim_mode = trim;
    opt.digits_left = pad_left;
    opt.digits_right = -1;
    opt.exp_digits = exp_digits;

    if (FUNC4(obj, Half)) {
        npy_half x = ((PyHalfScalarObject *)obj)->obval;
        return FUNC2(&x, &opt);
    }
    else if (FUNC4(obj, Float)) {
        npy_float x = ((PyFloatScalarObject *)obj)->obval;
        return FUNC1(&x, &opt);
    }
    else if (FUNC4(obj, Double)) {
        npy_double x = ((PyDoubleScalarObject *)obj)->obval;
        return FUNC0(&x, &opt);
    }
    else if (FUNC4(obj, LongDouble)) {
        npy_longdouble x = ((PyLongDoubleScalarObject *)obj)->obval;
        return FUNC3(&x, &opt);
    }

    val = FUNC6(obj);
    if (FUNC5()) {
        return NULL;
    }
    return FUNC0(&val, &opt);
}