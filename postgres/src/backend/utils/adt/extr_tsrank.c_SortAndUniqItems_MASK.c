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
struct TYPE_3__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  TSQuery ;
typedef  int /*<<< orphan*/  QueryOperand ;
typedef  TYPE_1__ QueryItem ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ QI_VAL ; 
 scalar_t__ FUNC2 (void*,void*,void*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int,int,scalar_t__ (*) (void*,void*,void*),void*) ; 

__attribute__((used)) static QueryOperand **
FUNC5(TSQuery q, int *size)
{
	char	   *operand = FUNC0(q);
	QueryItem  *item = FUNC1(q);
	QueryOperand **res,
			  **ptr,
			  **prevptr;

	ptr = res = (QueryOperand **) FUNC3(sizeof(QueryOperand *) * *size);

	/* Collect all operands from the tree to res */
	while ((*size)--)
	{
		if (item->type == QI_VAL)
		{
			*ptr = (QueryOperand *) item;
			ptr++;
		}
		item++;
	}

	*size = ptr - res;
	if (*size < 2)
		return res;

	FUNC4(res, *size, sizeof(QueryOperand *), compareQueryOperand, (void *) operand);

	ptr = res + 1;
	prevptr = res;

	/* remove duplicates */
	while (ptr - res < *size)
	{
		if (FUNC2((void *) ptr, (void *) prevptr, (void *) operand) != 0)
		{
			prevptr++;
			*prevptr = *ptr;
		}
		ptr++;
	}

	*size = prevptr + 1 - res;
	return res;
}