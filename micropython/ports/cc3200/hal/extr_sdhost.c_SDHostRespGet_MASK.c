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
 unsigned long FUNC0 (scalar_t__) ; 
 scalar_t__ MMCHS_O_RSP10 ; 
 scalar_t__ MMCHS_O_RSP32 ; 
 scalar_t__ MMCHS_O_RSP54 ; 
 scalar_t__ MMCHS_O_RSP76 ; 

void
FUNC1(unsigned long ulBase, unsigned long ulRespnse[4])
{

  //
  // Read the responses.
  //
  ulRespnse[0] = FUNC0(ulBase + MMCHS_O_RSP10);
  ulRespnse[1] = FUNC0(ulBase + MMCHS_O_RSP32);
  ulRespnse[2] = FUNC0(ulBase + MMCHS_O_RSP54);
  ulRespnse[3] = FUNC0(ulBase + MMCHS_O_RSP76);

}