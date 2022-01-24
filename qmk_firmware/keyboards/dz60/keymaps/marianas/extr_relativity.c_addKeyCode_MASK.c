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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__* macroTaps ; 
 int macroTapsLen ; 

void FUNC0(uint16_t kc)
{
  int i = 0;
  while (i < macroTapsLen-2 && macroTaps[i] > 0) i++;
  if (macroTaps[i] == 0)
  {
    macroTaps[i] = kc;
    macroTaps[i+1] = 0;
  }
}