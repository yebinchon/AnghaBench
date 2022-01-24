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
typedef  int /*<<< orphan*/  TaskHandle_t ;
struct TYPE_4__ {char* pcTaskName; } ;
typedef  TYPE_1__ TCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

char *FUNC2( TaskHandle_t xTaskToQuery ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
{
TCB_t *pxTCB;

	/* If null is passed in here then the name of the calling task is being
	queried. */
	pxTCB = FUNC1( xTaskToQuery );
	FUNC0( pxTCB );
	return &( pxTCB->pcTaskName[ 0 ] );
}