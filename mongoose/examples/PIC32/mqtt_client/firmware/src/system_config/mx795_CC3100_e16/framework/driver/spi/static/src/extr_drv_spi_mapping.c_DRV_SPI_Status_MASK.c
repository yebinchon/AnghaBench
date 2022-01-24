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
typedef  int /*<<< orphan*/  SYS_STATUS ;
typedef  int SYS_MODULE_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DRV_SPI_INDEX_0 128 
 int /*<<< orphan*/  SYS_STATUS_ERROR ; 

SYS_STATUS FUNC1( SYS_MODULE_OBJ object)
{
    SYS_STATUS returnValue;

    switch(object)
    {
        case DRV_SPI_INDEX_0:
        {
            returnValue = FUNC0();
            break;
        }
        default:
        {
            returnValue = SYS_STATUS_ERROR;
            break;
        }
    }
    return returnValue;
}