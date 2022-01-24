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
 int /*<<< orphan*/  FUNC0 (double,double*,double*) ; 
 double FUNC1 (double,double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double) ; 

__attribute__((used)) static void FUNC5(double d, double *RA, double *dec, double *r)
{
	double lon, obl_ecl, x, y, z;

	/* Compute Sun's ecliptical coordinates */
	FUNC0(d, &lon, r);

	/* Compute ecliptic rectangular coordinates (z=0) */
	x = *r * FUNC2(lon);
	y = *r * FUNC3(lon);

	/* Compute obliquity of ecliptic (inclination of Earth's axis) */
	obl_ecl = 23.4393 - 3.563E-7 * d;

	/* Convert to equatorial rectangular coordinates - x is unchanged */
	z = y * FUNC3(obl_ecl);
	y = y * FUNC2(obl_ecl);

	/* Convert to spherical coordinates */
	*RA = FUNC1(y, x);
	*dec = FUNC1(z, FUNC4(x*x + y*y));
}