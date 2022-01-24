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
typedef  TYPE_1__* xsltDecimalFormatPtr ;
struct TYPE_4__ {struct TYPE_4__* name; struct TYPE_4__* noNumber; struct TYPE_4__* infinity; struct TYPE_4__* minusSign; struct TYPE_4__* zeroDigit; struct TYPE_4__* permille; struct TYPE_4__* percent; struct TYPE_4__* grouping; struct TYPE_4__* decimalPoint; struct TYPE_4__* patternSeparator; struct TYPE_4__* digit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1(xsltDecimalFormatPtr self)
{
    if (self != NULL) {
	if (self->digit)
	    FUNC0(self->digit);
	if (self->patternSeparator)
	    FUNC0(self->patternSeparator);
	if (self->decimalPoint)
	    FUNC0(self->decimalPoint);
	if (self->grouping)
	    FUNC0(self->grouping);
	if (self->percent)
	    FUNC0(self->percent);
	if (self->permille)
	    FUNC0(self->permille);
	if (self->zeroDigit)
	    FUNC0(self->zeroDigit);
	if (self->minusSign)
	    FUNC0(self->minusSign);
	if (self->infinity)
	    FUNC0(self->infinity);
	if (self->noNumber)
	    FUNC0(self->noNumber);
	if (self->name)
	    FUNC0(self->name);
	FUNC0(self);
    }
}