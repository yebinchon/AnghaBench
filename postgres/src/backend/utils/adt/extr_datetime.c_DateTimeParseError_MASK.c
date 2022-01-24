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
#define  DTERR_BAD_FORMAT 132 
#define  DTERR_FIELD_OVERFLOW 131 
#define  DTERR_INTERVAL_OVERFLOW 130 
#define  DTERR_MD_FIELD_OVERFLOW 129 
#define  DTERR_TZDISP_OVERFLOW 128 
 int /*<<< orphan*/  ERRCODE_DATETIME_FIELD_OVERFLOW ; 
 int /*<<< orphan*/  ERRCODE_INTERVAL_FIELD_OVERFLOW ; 
 int /*<<< orphan*/  ERRCODE_INVALID_DATETIME_FORMAT ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TIME_ZONE_DISPLACEMENT_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 

void
FUNC4(int dterr, const char *str, const char *datatype)
{
	switch (dterr)
	{
		case DTERR_FIELD_OVERFLOW:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_DATETIME_FIELD_OVERFLOW),
					 FUNC3("date/time field value out of range: \"%s\"",
							str)));
			break;
		case DTERR_MD_FIELD_OVERFLOW:
			/* <nanny>same as above, but add hint about DateStyle</nanny> */
			FUNC0(ERROR,
					(FUNC1(ERRCODE_DATETIME_FIELD_OVERFLOW),
					 FUNC3("date/time field value out of range: \"%s\"",
							str),
					 FUNC2("Perhaps you need a different \"datestyle\" setting.")));
			break;
		case DTERR_INTERVAL_OVERFLOW:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_INTERVAL_FIELD_OVERFLOW),
					 FUNC3("interval field value out of range: \"%s\"",
							str)));
			break;
		case DTERR_TZDISP_OVERFLOW:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_INVALID_TIME_ZONE_DISPLACEMENT_VALUE),
					 FUNC3("time zone displacement out of range: \"%s\"",
							str)));
			break;
		case DTERR_BAD_FORMAT:
		default:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_INVALID_DATETIME_FORMAT),
					 FUNC3("invalid input syntax for type %s: \"%s\"",
							datatype, str)));
			break;
	}
}