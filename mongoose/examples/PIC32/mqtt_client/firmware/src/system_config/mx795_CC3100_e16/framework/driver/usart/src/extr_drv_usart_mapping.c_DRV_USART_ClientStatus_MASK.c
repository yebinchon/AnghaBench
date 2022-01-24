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
typedef  int /*<<< orphan*/  DRV_USART_CLIENT_STATUS ;
typedef  int DRV_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_CLIENT_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
#define  DRV_USART_INDEX_0 128 

DRV_USART_CLIENT_STATUS FUNC1 ( DRV_HANDLE handle )
{
    uintptr_t instance;
    DRV_USART_CLIENT_STATUS returnValue;

    instance = handle & 0x00FF;
    //As we are handling single client, only multiple instance is taken care.
    switch(instance)
    {
        case DRV_USART_INDEX_0:
        {
            returnValue = FUNC0();
            break;
        }
        default:
        {
            returnValue = DRV_CLIENT_STATUS_ERROR;
            break;
        }
    }
    return returnValue;
}