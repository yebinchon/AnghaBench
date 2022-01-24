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
typedef  int /*<<< orphan*/  DRV_SPI_BUFFER_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

DRV_SPI_BUFFER_EVENT FUNC1 ( DRV_SPI_BUFFER_HANDLE bufferHandle )
{
    //This function is independent of instance or client.
    return FUNC0 ( bufferHandle);
}