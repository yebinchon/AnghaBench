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
struct TYPE_2__ {int /*<<< orphan*/  uxMessagesWaiting; } ;
typedef  TYPE_1__ Queue_t ;
typedef  scalar_t__ QueueHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ const) ; 

UBaseType_t FUNC1( const QueueHandle_t xQueue )
{
UBaseType_t uxReturn;

	FUNC0( xQueue );

	uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;

	return uxReturn;
}