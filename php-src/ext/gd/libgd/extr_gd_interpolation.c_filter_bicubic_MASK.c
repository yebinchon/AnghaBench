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
 scalar_t__ FUNC0 (double const) ; 

__attribute__((used)) static double FUNC1(const double t)
{
  const double abs_t = (double)FUNC0(t);
  const double abs_t_sq = abs_t * abs_t;
  if (abs_t<1) return 1-2*abs_t_sq+abs_t_sq*abs_t;
  if (abs_t<2) return 4 - 8*abs_t +5*abs_t_sq - abs_t_sq*abs_t;
  return 0;
}