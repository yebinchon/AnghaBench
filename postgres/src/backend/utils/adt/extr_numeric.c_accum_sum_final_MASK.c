#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* int16 ;
struct TYPE_13__ {int ndigits; scalar_t__* pos_digits; scalar_t__* neg_digits; int /*<<< orphan*/  dscale; int /*<<< orphan*/  weight; } ;
struct TYPE_12__ {int ndigits; void** digits; void** buf; int /*<<< orphan*/  sign; int /*<<< orphan*/  dscale; int /*<<< orphan*/  weight; } ;
typedef  TYPE_1__ NumericVar ;
typedef  TYPE_2__ NumericSumAccum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NBASE ; 
 int /*<<< orphan*/  NUMERIC_NEG ; 
 int /*<<< orphan*/  NUMERIC_POS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  const_zero ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(NumericSumAccum *accum, NumericVar *result)
{
	int			i;
	NumericVar	pos_var;
	NumericVar	neg_var;

	if (accum->ndigits == 0)
	{
		FUNC5(&const_zero, result);
		return;
	}

	/* Perform final carry */
	FUNC1(accum);

	/* Create NumericVars representing the positive and negative sums */
	FUNC4(&pos_var);
	FUNC4(&neg_var);

	pos_var.ndigits = neg_var.ndigits = accum->ndigits;
	pos_var.weight = neg_var.weight = accum->weight;
	pos_var.dscale = neg_var.dscale = accum->dscale;
	pos_var.sign = NUMERIC_POS;
	neg_var.sign = NUMERIC_NEG;

	pos_var.buf = pos_var.digits = FUNC3(accum->ndigits);
	neg_var.buf = neg_var.digits = FUNC3(accum->ndigits);

	for (i = 0; i < accum->ndigits; i++)
	{
		FUNC0(accum->pos_digits[i] < NBASE);
		pos_var.digits[i] = (int16) accum->pos_digits[i];

		FUNC0(accum->neg_digits[i] < NBASE);
		neg_var.digits[i] = (int16) accum->neg_digits[i];
	}

	/* And add them together */
	FUNC2(&pos_var, &neg_var, result);

	/* Remove leading/trailing zeroes */
	FUNC6(result);
}