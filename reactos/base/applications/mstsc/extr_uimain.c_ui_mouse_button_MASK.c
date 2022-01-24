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
typedef  int /*<<< orphan*/  uint16 ;

/* Variables and functions */
 int /*<<< orphan*/  MOUSE_FLAG_BUTTON1 ; 
 int /*<<< orphan*/  MOUSE_FLAG_BUTTON2 ; 
 int /*<<< orphan*/  MOUSE_FLAG_BUTTON3 ; 
 int /*<<< orphan*/  MOUSE_FLAG_BUTTON4 ; 
 int /*<<< orphan*/  MOUSE_FLAG_BUTTON5 ; 
 int /*<<< orphan*/  MOUSE_FLAG_DOWN ; 
 int /*<<< orphan*/  RDP_INPUT_MOUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(int button, int x, int y, int down)
{
  uint16 flags;

  flags = 0;
  if (down)
  {
    flags |= MOUSE_FLAG_DOWN;
  }
  switch (button)
  {
    case 1:
      flags |= MOUSE_FLAG_BUTTON1;
      break;
    case 2:
      flags |= MOUSE_FLAG_BUTTON2;
      break;
    case 3:
      flags |= MOUSE_FLAG_BUTTON3;
      break;
    case 4:
      flags |= MOUSE_FLAG_BUTTON4;
      break;
    case 5:
      flags |= MOUSE_FLAG_BUTTON5;
      break;
  }
  FUNC0(0, RDP_INPUT_MOUSE, flags, (uint16) x, (uint16) y);
}