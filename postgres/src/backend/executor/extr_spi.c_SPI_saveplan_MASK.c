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
struct TYPE_6__ {scalar_t__ magic; } ;
typedef  TYPE_1__* SPIPlanPtr ;

/* Variables and functions */
 scalar_t__ SPI_ERROR_ARGUMENT ; 
 scalar_t__ SPI_result ; 
 scalar_t__ _SPI_PLAN_MAGIC ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

SPIPlanPtr
FUNC3(SPIPlanPtr plan)
{
	SPIPlanPtr	newplan;

	if (plan == NULL || plan->magic != _SPI_PLAN_MAGIC)
	{
		SPI_result = SPI_ERROR_ARGUMENT;
		return NULL;
	}

	SPI_result = FUNC0(false);	/* don't change context */
	if (SPI_result < 0)
		return NULL;

	newplan = FUNC2(plan);

	SPI_result = FUNC1(false);

	return newplan;
}