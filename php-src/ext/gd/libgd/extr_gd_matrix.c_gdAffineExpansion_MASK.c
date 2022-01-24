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
 int /*<<< orphan*/  FUNC0 (double const) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 

double FUNC2 (const double src[6])
{
  return FUNC1 (FUNC0 (src[0] * src[3] - src[1] * src[2]));
}