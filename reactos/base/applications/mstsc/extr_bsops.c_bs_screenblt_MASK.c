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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int*,int*,int*,int*,int*,int*) ; 
 int g_Bpp ; 
 char* FUNC5 (int,int) ; 

void
FUNC6(int rop, int x, int y, int cx, int cy,
             int srcx, int srcy)
{
  int p;
  int i;
  int j;
  char * src;
  char * dst;

  if (FUNC4(&x, &y, &cx, &cy, &srcx, &srcy))
  {
    if (rop == 12) /* copy */
    {
      if (srcy < y) /* copy down - bottom to top */
      {
        for (i = cy - 1; i >= 0; i--)
        {
          src = FUNC5(srcx, srcy + i);
          dst = FUNC5(x, y + i);
          if (src != 0 && dst != 0)
          {
            FUNC0(dst, src, cx * g_Bpp);
          }
        }
      }
      else if (srcy > y || srcx > x) /* copy up or left - top to bottom */
      {
        for (i = 0; i < cy; i++)
        {
          src = FUNC5(srcx, srcy + i);
          dst = FUNC5(x, y + i);
          if (src != 0 && dst != 0)
          {
            FUNC0(dst, src, cx * g_Bpp);
          }
        }
      }
      else /* copy straight right */
      {
        for (i = 0; i < cy; i++)
        {
          src = FUNC5(srcx, srcy + i);
          dst = FUNC5(x, y + i);
          if (src != 0 && dst != 0)
          {
            FUNC1(dst, src, cx * g_Bpp);
          }
        }
      }
    }
    else /* slow */
    {
      if (srcy < y) /* copy down - bottom to top */
      {
        for (i = cy - 1; i >= 0; i--)
        {
          for (j = 0; j < cx; j++)
          {
            p = FUNC2(srcx + j, srcy + i);
            FUNC3(x + j, y + i, p, rop, 0);
          }
        }
      }
      else if (srcy > y || srcx > x) /* copy up or left - top to bottom */
      {
        for (i = 0; i < cy; i++)
        {
          for (j = 0; j < cx; j++)
          {
            p = FUNC2(srcx + j, srcy + i);
            FUNC3(x + j, y + i, p, rop, 0);
          }
        }
      }
      else /* copy straight right */
      {
        for (i = 0; i < cy; i++)
        {
          for (j = cx - 1; j >= 0; j--)
          {
            p = FUNC2(srcx + j, srcy + i);
            FUNC3(x + j, y + i, p, rop, 0);
          }
        }
      }
    }
  }
}