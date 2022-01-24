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
 scalar_t__ M_E ; 
 double FUNC0 (double) ; 
 double FUNC1 (scalar_t__) ; 
 int FUNC2 (double,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static double FUNC4(double z)
{
#ifdef HAVE_ASINH
	return(asinh(z));
#else
# ifdef _WIN64
	if (z >= 0) {
		return log(z + sqrt(z * z + 1));
	}
	else {
		return -log(-z + sqrt(z * z + 1));
	}
# else
	return(FUNC1(z + FUNC3(1 + FUNC2(z, 2))) / FUNC1(M_E));
# endif
#endif
}