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
typedef  int /*<<< orphan*/  DRV_SPI_BUFFER_HANDLE ;
typedef  int /*<<< orphan*/  DRV_SPI_BUFFER_EVENT_HANDLER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

DRV_SPI_BUFFER_HANDLE FUNC1 ( void *rxBuffer, size_t size, DRV_SPI_BUFFER_EVENT_HANDLER completeCB, void * context)
{
    return FUNC0(rxBuffer, size, completeCB, context, NULL);
}