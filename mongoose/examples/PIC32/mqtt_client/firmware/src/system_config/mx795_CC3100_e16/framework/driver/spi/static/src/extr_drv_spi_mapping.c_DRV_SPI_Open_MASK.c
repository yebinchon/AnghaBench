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
typedef  int SYS_MODULE_INDEX ;
typedef  int /*<<< orphan*/  DRV_IO_INTENT ;
typedef  int /*<<< orphan*/  DRV_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_HANDLE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int const,int /*<<< orphan*/  const) ; 
#define  DRV_SPI_INDEX_0 128 

DRV_HANDLE FUNC1( const SYS_MODULE_INDEX index, const DRV_IO_INTENT ioIntent)
{
    DRV_HANDLE returnValue;

    switch(index)
    {
        case DRV_SPI_INDEX_0:
        {
            returnValue = FUNC0(index,ioIntent);
            break;
        }
        default:
        {
            returnValue = DRV_HANDLE_INVALID;
            break;
        }
    }
    return returnValue;
}