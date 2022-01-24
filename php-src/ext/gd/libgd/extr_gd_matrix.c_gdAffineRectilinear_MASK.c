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
 scalar_t__ GD_EPSILON ; 
 scalar_t__ FUNC0 (double const) ; 

int FUNC1 (const double m[6])
{
  return ((FUNC0 (m[1]) < GD_EPSILON && FUNC0 (m[2]) < GD_EPSILON) ||
	  (FUNC0 (m[0]) < GD_EPSILON && FUNC0 (m[3]) < GD_EPSILON));
}