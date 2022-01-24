#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UBaseType_t ;
struct TYPE_2__ {int /*<<< orphan*/  uxEventBits; } ;
typedef  TYPE_1__ EventGroup_t ;
typedef  scalar_t__ EventGroupHandle_t ;
typedef  int /*<<< orphan*/  EventBits_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

EventBits_t FUNC2( EventGroupHandle_t xEventGroup )
{
UBaseType_t uxSavedInterruptStatus;
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
EventBits_t uxReturn;

	uxSavedInterruptStatus = FUNC1();
	{
		uxReturn = pxEventBits->uxEventBits;
	}
	FUNC0( uxSavedInterruptStatus );

	return uxReturn;
}