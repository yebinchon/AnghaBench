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
 double FUNC0 () ; 

__attribute__((used)) static double
FUNC1 (int n)
{
  int		i;
  double	f, g, h, s;

  s = 0.0;

  /*
   * Useless work.
   */
  for (i = n*100; i > 0; --i)
    {
      f = FUNC0 ();
      g = FUNC0 ();
      h = FUNC0 ();
      s += 2.0 * f * g / (h != 0.0 ? (h * h) : 1.0);
    }
  return s;
}