#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_3__ {int width; scalar_t__ style; int /*<<< orphan*/  colour; } ;
typedef  TYPE_1__ PEN ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 

void
FUNC5(uint8 opcode, int startx, int starty, int endx, int endy,
        PEN * pen)
{
  int x;
  int y;
  int cx;
  int cy;

  FUNC2(opcode, startx, starty, endx, endy, pen->width, pen->style,
          pen->colour);
  if (pen->style == 0 && pen->width < 2 && opcode == 12)
  {
    FUNC3(startx, starty, endx, endy, pen->colour);
  }
  else
  {
    x = FUNC1(startx, endx);
    y = FUNC1(starty, endy);
    cx = (FUNC0(startx, endx) + 1) - x;
    cy = (FUNC0(starty, endy) + 1) - y;
    FUNC4(x, y, cx, cy);
  }
}