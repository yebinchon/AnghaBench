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
typedef  int zic_t ;

/* Variables and functions */
 int HOURSPERDAY ; 
 int MINSPERHOUR ; 
 int SECSPERHOUR ; 
 int SECSPERMIN ; 
 int ZIC_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ noise ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (char const*,char*,int*,char*,int*,char*,int*,char*,int*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static zic_t
FUNC5(char const *string, char const *errstring)
{
	/* PG: make hh be int not zic_t to avoid sscanf portability issues */
	int			hh;
	int			sign,
				mm = 0,
				ss = 0;
	char		hhx,
				mmx,
				ssx,
				xr = '0',
				xs;
	int			tenths = 0;
	bool		ok = true;

	if (string == NULL || *string == '\0')
		return 0;
	if (*string == '-')
	{
		sign = -1;
		++string;
	}
	else
		sign = 1;
	switch (FUNC3(string,
				   "%d%c%d%c%d%c%1d%*[0]%c%*[0123456789]%c",
				   &hh, &hhx, &mm, &mmx, &ss, &ssx, &tenths, &xr, &xs))
	{
		default:
			ok = false;
			break;
		case 8:
			ok = '0' <= xr && xr <= '9';
			/* fallthrough */
		case 7:
			ok &= ssx == '.';
			if (ok && noise)
				FUNC4(FUNC0("fractional seconds rejected by"
						  " pre-2018 versions of zic"));
			/* fallthrough */
		case 5:
			ok &= mmx == ':';
			/* fallthrough */
		case 3:
			ok &= hhx == ':';
			/* fallthrough */
		case 1:
			break;
	}
	if (!ok)
	{
		FUNC1("%s", errstring);
		return 0;
	}
	if (hh < 0 ||
		mm < 0 || mm >= MINSPERHOUR ||
		ss < 0 || ss > SECSPERMIN)
	{
		FUNC1("%s", errstring);
		return 0;
	}
	/* Some compilers warn that this test is unsatisfiable for 32-bit ints */
#if INT_MAX > PG_INT32_MAX
	if (ZIC_MAX / SECSPERHOUR < hh)
	{
		error(_("time overflow"));
		return 0;
	}
#endif
	ss += 5 + ((ss ^ 1) & (xr == '0')) <= tenths;	/* Round to even.  */
	if (noise && (hh > HOURSPERDAY ||
				  (hh == HOURSPERDAY && (mm != 0 || ss != 0))))
		FUNC4(FUNC0("values over 24 hours not handled by pre-2007 versions of zic"));
	return FUNC2(sign * (zic_t) hh * SECSPERHOUR,
				sign * (mm * SECSPERMIN + ss));
}