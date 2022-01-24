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

/* Variables and functions */
 scalar_t__ HIB3P3_BASE ; 
 scalar_t__ HIB3P3_O_MEM_GPIO_WAKE_CONF ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 

void FUNC2(unsigned long ulGPIOBitMap, unsigned long ulType)
{
  unsigned char ucLoop;
  unsigned long ulRegValue;

  //
  // Shift the bits to extract the GPIO selection
  //
  ulGPIOBitMap >>= 16;

  //
  // Set the configuration for each GPIO
  //
  for(ucLoop=0; ucLoop < 7; ucLoop++)
  {
    if(ulGPIOBitMap & (1<<ucLoop))
    {
      ulRegValue  = FUNC0(HIB3P3_BASE+HIB3P3_O_MEM_GPIO_WAKE_CONF);
      ulRegValue |= (ulType << (ucLoop*2));
      FUNC1(HIB3P3_BASE+HIB3P3_O_MEM_GPIO_WAKE_CONF, ulRegValue);
    }
  }
}