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
typedef  int uint8_t ;
struct TYPE_2__ {scalar_t__ mode; int errorCode; } ;

/* Variables and functions */
 scalar_t__ Initializing ; 
 scalar_t__ Ready ; 
 scalar_t__ RepeatedStartSent ; 
 int TWCR ; 
 TYPE_1__ TWIInfo ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int TWINT ; 
#define  TWI_LOST_ARBIT 131 
#define  TWI_MT_DATA_NACK 130 
#define  TWI_NO_RELEVANT_INFO 129 
#define  TWI_SUCCESS 128 
 int TWSTO ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

uint8_t FUNC2()
{
	if ( (TWIInfo.mode == Ready) | (TWIInfo.mode == RepeatedStartSent) )
	{
		return 1;
	}
	else
	{
		if(TWIInfo.mode == Initializing){
			switch(TWIInfo.errorCode){
		        case TWI_SUCCESS:
		        case TWI_NO_RELEVANT_INFO:
		        	break;
				case TWI_LOST_ARBIT:
				case TWI_MT_DATA_NACK:
					// Some kind of I2C error, reset and re-init
		        	FUNC1("I2C init error: %d\n", TWIInfo.errorCode);
			        TWCR = (1 << TWINT)|(1 << TWSTO);
		        	FUNC0();
		        	break;
		        default:
		        	FUNC1("Other i2c init error: %d\n", TWIInfo.errorCode);
			}
		}
		return 0;
	}
}