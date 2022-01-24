#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_6__ {int colorsTotal; } ;

/* Variables and functions */
 int GD_CMP_COLOR ; 
 int GD_CMP_IMAGE ; 
 int GD_CMP_NUM_COLORS ; 
 int GD_CMP_SIZE_X ; 
 int GD_CMP_SIZE_Y ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

void
FUNC2 (char *msg, gdImagePtr im1, gdImagePtr im2)
{
  int cmpRes;

  cmpRes = FUNC0 (im1, im2);

  if (cmpRes & GD_CMP_IMAGE)
    {
      FUNC1 ("%%%s: ERROR images differ: BAD\n", msg);
    }
  else if (cmpRes != 0)
    {
      FUNC1 ("%%%s: WARNING images differ: WARNING - Probably OK\n", msg);
    }
  else
    {
      FUNC1 ("%%%s: OK\n", msg);
      return;
    }

  if (cmpRes & (GD_CMP_SIZE_X + GD_CMP_SIZE_Y))
    {
      FUNC1 ("-%s: INFO image sizes differ\n", msg);
    }

  if (cmpRes & GD_CMP_NUM_COLORS)
    {
      FUNC1 ("-%s: INFO number of pallette entries differ %d Vs. %d\n", msg,
	      im1->colorsTotal, im2->colorsTotal);
    }

  if (cmpRes & GD_CMP_COLOR)
    {
      FUNC1 ("-%s: INFO actual colours of pixels differ\n", msg);
    }
}