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
struct TYPE_3__ {int height; int width; scalar_t__* bitmap; } ;
typedef  TYPE_1__ Wbmp ;

/* Variables and functions */
 scalar_t__ WBMP_BLACK ; 
 int /*<<< orphan*/  FUNC0 (char) ; 

void
FUNC1 (Wbmp * wbmp)
{
  int row, col;
  for (row = 0; row < wbmp->height; row++)
    {
      for (col = 0; col < wbmp->width; col++)
	{
	  if (wbmp->bitmap[wbmp->width * row + col] == WBMP_BLACK)
	    {
	      FUNC0 ('#');
	    }
	  else
	    {
	      FUNC0 (' ');
	    }
	}
      FUNC0 ('\n');
    }
}