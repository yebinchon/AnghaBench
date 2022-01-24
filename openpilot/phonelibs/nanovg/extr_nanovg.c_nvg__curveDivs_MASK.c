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
 float FUNC0 (float) ; 
 scalar_t__ FUNC1 (float) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(float r, float arc, float tol)
{
	float da = FUNC0(r / (r + tol)) * 2.0f;
	return FUNC2(2, (int)FUNC1(arc / da));
}