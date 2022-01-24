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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

uint16_t FUNC3(uint8_t sn)
{
   uint16_t val=0,val1=0;

   do
   {
      val1 = FUNC2(FUNC0(sn));
      val1 = (val1 << 8) + FUNC2(FUNC1(FUNC0(sn),1));
      if (val1 != 0)
      {
        val = FUNC2(FUNC0(sn));
        val = (val << 8) + FUNC2(FUNC1(FUNC0(sn),1));
      }
   }while (val != val1);
   return val;
}