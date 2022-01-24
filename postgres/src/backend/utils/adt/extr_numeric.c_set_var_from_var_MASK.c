#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ndigits; scalar_t__* digits; scalar_t__* buf; } ;
typedef  TYPE_1__ NumericVar ;
typedef  scalar_t__ NumericDigit ;

/* Variables and functions */
 scalar_t__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*,int) ; 

__attribute__((used)) static void
FUNC4(const NumericVar *value, NumericVar *dest)
{
	NumericDigit *newbuf;

	newbuf = FUNC0(value->ndigits + 1);
	newbuf[0] = 0;				/* spare digit for rounding */
	if (value->ndigits > 0)		/* else value->digits might be null */
		FUNC2(newbuf + 1, value->digits,
			   value->ndigits * sizeof(NumericDigit));

	FUNC1(dest->buf);

	FUNC3(dest, value, sizeof(NumericVar));
	dest->buf = newbuf;
	dest->digits = newbuf + 1;
}