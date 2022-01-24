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
typedef  int /*<<< orphan*/  uint8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int,int,int,unsigned char*,unsigned char*) ; 

void *
FUNC4(unsigned int x, unsigned int y,
                 int width, int height,
                 uint8 * andmask, uint8 * xormask, int xor_bpp)
{
  int i;
  int j;
  char am[32 * 4];
  char xm[32 * 4];

  if (width != 32 || height != 32)
  {
    return NULL;
  }
  if (xor_bpp==1)
  {
    return (void *) FUNC3(x, y, width, height, (unsigned char *)andmask, (unsigned char *)xormask);
  }
  FUNC2(am, 0, 32 * 4);
  FUNC2(xm, 0, 32 * 4);
  for (i = 0; i < 32; i++)
  {
    for (j = 0; j < 32; j++)
    {
      if (FUNC0((char *)andmask, j, i, 32, 1))
      {
        FUNC1(am, j, 31 - i, 32, 1, 1);
      }
      if (FUNC0((char *)xormask, j, i, 32, xor_bpp))
      {
        FUNC1(xm, j, 31 - i, 32, 1, 1);
      }
    }
  }
  return (void *) FUNC3(x, y, width, height, (unsigned char *)am, (unsigned char *)xm);
}