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
typedef  int int8_t ;

/* Variables and functions */
 int PHYCFGR_OPMDC_PDOWN ; 
 int PHYSTATUS_POWERDOWN ; 
 int PHY_POWER_DOWN ; 
 int PHY_POWER_NORM ; 
 int FUNC0 () ; 
 int FUNC1 () ; 

int8_t FUNC2(void)
{
   int8_t tmp = 0;
   #if   _WIZCHIP_ == 5200
      if(getPHYSTATUS() & PHYSTATUS_POWERDOWN)
         tmp = PHY_POWER_DOWN;
      else          
         tmp = PHY_POWER_NORM;
   #elif _WIZCHIP_ == 5500
      if(getPHYCFGR() & PHYCFGR_OPMDC_PDOWN)
         tmp = PHY_POWER_DOWN;
      else 
         tmp = PHY_POWER_NORM;
   #else
      tmp = -1;
   #endif
   return tmp;
}