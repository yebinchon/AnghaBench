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
typedef  int /*<<< orphan*/  bit32u ;

/* Variables and functions */
 scalar_t__ RecLength ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  fOut ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

void FUNC2(char *s, bit32u Value)
{
    int Length;
    Length = (int) RecLength;
    if (debug)
          FUNC1("[%s  ] ftell()[0x%08lX] Length[0x%4X] Length[%4d] Value[0x%08x]\n",
                s, FUNC0(fOut), Length, Length, Value);
}