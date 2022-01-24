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

int
FUNC0 (int (*getin) (void *in), void *in)
{
  int i;

  do
    {
      i = getin (in);
      if (i < 0)
	return (-1);
    }
  while (i & 0x80);

  return (0);
}