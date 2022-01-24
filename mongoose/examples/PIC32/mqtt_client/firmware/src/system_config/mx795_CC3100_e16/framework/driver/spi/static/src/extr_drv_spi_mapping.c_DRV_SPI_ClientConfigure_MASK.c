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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  DRV_SPI_CLIENT_DATA ;
typedef  int DRV_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_HANDLE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
#define  DRV_SPI_INDEX_0 128 

int32_t FUNC1 ( DRV_HANDLE handle, const DRV_SPI_CLIENT_DATA * cfgData  )
{
    uintptr_t instance;
    int32_t returnValue;

    instance = handle & 0x00FF;
    //As we are handling single client, only multiple instance is taken care.
    switch(instance)
    {
        case DRV_SPI_INDEX_0:
        {
            returnValue = FUNC0( cfgData );
            break;
        }
        default:
        {
            returnValue = (int32_t)DRV_HANDLE_INVALID;
            break;
        }
    }
    return returnValue;
}