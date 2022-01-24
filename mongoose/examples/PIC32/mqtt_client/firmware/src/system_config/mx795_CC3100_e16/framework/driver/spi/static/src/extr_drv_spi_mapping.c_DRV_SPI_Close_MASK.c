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
typedef  int DRV_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DRV_SPI_INDEX_0 128 

void FUNC1( const DRV_HANDLE handle)
{
    uintptr_t instance;

    instance = handle & 0x00FF;
    //As we are handling single client, only multiple instance is taken care.
    switch(instance)
    {
        case DRV_SPI_INDEX_0:
        {
            FUNC0( );
            break;
        }
        default:
        {
            break;
        }
    }
}