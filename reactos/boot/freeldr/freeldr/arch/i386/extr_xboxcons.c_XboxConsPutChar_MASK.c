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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentAttr ; 
 int CurrentCursorX ; 
 int /*<<< orphan*/  CurrentCursorY ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

VOID
FUNC2(int c)
{
  ULONG Width;
  ULONG Height;
  ULONG Depth;

  if ('\r' == c)
    {
      CurrentCursorX = 0;
    }
  else if ('\n' == c)
    {
      CurrentCursorX = 0;
      CurrentCursorY++;
    }
  else if ('\t' == c)
    {
      CurrentCursorX = (CurrentCursorX + 8) & ~ 7;
    }
  else
    {
      FUNC1(c, CurrentAttr, CurrentCursorX, CurrentCursorY);
      CurrentCursorX++;
    }
  FUNC0(&Width, &Height, &Depth);
  if (Width <= CurrentCursorX)
    {
      CurrentCursorX = 0;
      CurrentCursorY++;
    }
}