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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,double) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(double x)
{
#ifdef WIN32
	/* Change Windows' 3-digit exponents to look like everyone else's */
	char		convert[128];
	int			vallen;

	sprintf(convert, "%g", x);
	vallen = strlen(convert);

	if (vallen >= 6 &&
		convert[vallen - 5] == 'e' &&
		convert[vallen - 3] == '0')
	{
		convert[vallen - 3] = convert[vallen - 2];
		convert[vallen - 2] = convert[vallen - 1];
		convert[vallen - 1] = '\0';
	}

	printf("%s", convert);
#else
	FUNC0("%g", x);
#endif
}