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
typedef  int uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 

void
FUNC3(uint8 opcode, int x, int y, int cx, int cy,
             int srcx, int srcy)
{
  FUNC0(opcode, x, y, cx, cy, srcx, srcy);
  if (opcode == 12)
  {
    FUNC1(x, y, cx, cy, srcx, srcy);
  }
  else
  {
    FUNC2(x, y, cx, cy);
  }
}