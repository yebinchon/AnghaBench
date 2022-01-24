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
typedef  scalar_t__ uint8_t ;
typedef  size_t int8_t ;
typedef  int /*<<< orphan*/  WIZCHIP_EXPORT ;

/* Variables and functions */
 size_t _WIZCHIP_SOCK_NUM_ ; 
 int /*<<< orphan*/  FUNC0 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int8_t FUNC3(uint8_t* txsize, uint8_t* rxsize)
{
   int8_t i;
   int8_t tmp = 0;
   FUNC2();
   if(txsize)
   {
      tmp = 0;
      for(i = 0 ; i < _WIZCHIP_SOCK_NUM_; i++)
         tmp += txsize[i];
      if(tmp > 16) return -1;
      for(i = 0 ; i < _WIZCHIP_SOCK_NUM_; i++)
         FUNC1(i, txsize[i]);
   }
   if(rxsize)
   {
      tmp = 0;
      for(i = 0 ; i < _WIZCHIP_SOCK_NUM_; i++)
         tmp += rxsize[i];
      if(tmp > 16) return -1;
      for(i = 0 ; i < _WIZCHIP_SOCK_NUM_; i++)
         FUNC0(i, rxsize[i]);
   }

   WIZCHIP_EXPORT(FUNC4)();

   return 0;
}