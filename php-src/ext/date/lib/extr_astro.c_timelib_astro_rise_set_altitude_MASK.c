#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int h; int i; int s; scalar_t__ sse; int /*<<< orphan*/  d; int /*<<< orphan*/  m; int /*<<< orphan*/  y; } ;
typedef  TYPE_1__ timelib_time ;
typedef  scalar_t__ timelib_sll ;

/* Variables and functions */
 double FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (double,double*,double*,double*) ; 
 double FUNC5 (double) ; 
 double FUNC6 (double) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC11(timelib_time *t_loc, double lon, double lat, double altit, int upper_limb, double *h_rise, double *h_set, timelib_sll *ts_rise, timelib_sll *ts_set, timelib_sll *ts_transit)
{
	double  d,  /* Days since 2000 Jan 0.0 (negative before) */
	sr,         /* Solar distance, astronomical units */
	sRA,        /* Sun's Right Ascension */
	sdec,       /* Sun's declination */
	sradius,    /* Sun's apparent radius */
	t,          /* Diurnal arc */
	tsouth,     /* Time when Sun is at south */
	sidtime;    /* Local sidereal time */
	timelib_time *t_utc;
	timelib_sll   timestamp, old_sse;

	int rc = 0; /* Return cde from function - usually 0 */

	/* Normalize time */
	old_sse = t_loc->sse;
	t_loc->h = 12;
	t_loc->i = t_loc->s = 0;
	FUNC10(t_loc, NULL);

	/* Calculate TS belonging to UTC 00:00 of the current day, for input into
	 * the algorithm */
	t_utc = FUNC7();
	t_utc->y = t_loc->y;
	t_utc->m = t_loc->m;
	t_utc->d = t_loc->d;
	t_utc->h = t_utc->i = t_utc->s = 0;
	FUNC10(t_utc, NULL);

	/* Compute d of 12h local mean solar time */
	timestamp = t_utc->sse;
	d = FUNC9(timestamp) + 2 - lon/360.0;

	/* Compute local sidereal time of this moment */
	sidtime = FUNC3(FUNC1(d) + 180.0 + lon);

	/* Compute Sun's RA + Decl at this moment */
	FUNC4( d, &sRA, &sdec, &sr );

	/* Compute time when Sun is at south - in hours UT */
	tsouth = 12.0 - FUNC2(sidtime - sRA) / 15.0;

	/* Compute the Sun's apparent radius, degrees */
	sradius = 0.2666 / sr;

	/* Do correction to upper limb, if necessary */
	if (upper_limb) {
		altit -= sradius;
	}

	/* Compute the diurnal arc that the Sun traverses to reach */
	/* the specified altitude altit: */
	{
		double cost;
		cost = (FUNC6(altit) - FUNC6(lat) * FUNC6(sdec)) / (FUNC5(lat) * FUNC5(sdec));
		*ts_transit = t_utc->sse + (tsouth * 3600);
		if (cost >= 1.0) {
			rc = -1;
			t = 0.0;       /* Sun always below altit */

			*ts_rise = *ts_set = t_utc->sse + (tsouth * 3600);
		} else if (cost <= -1.0) {
			rc = +1;
			t = 12.0;      /* Sun always above altit */

			*ts_rise = t_loc->sse - (12 * 3600);
			*ts_set  = t_loc->sse + (12 * 3600);
		} else {
			t = FUNC0(cost) / 15.0;   /* The diurnal arc, hours */

			/* Store rise and set times - as Unix Timestamp */
			*ts_rise = ((tsouth - t) * 3600) + t_utc->sse;
			*ts_set  = ((tsouth + t) * 3600) + t_utc->sse;

			*h_rise = (tsouth - t);
			*h_set  = (tsouth + t);
		}
	}

	/* Kill temporary time and restore original sse */
	FUNC8(t_utc);
	t_loc->sse = old_sse;

	return rc;
}