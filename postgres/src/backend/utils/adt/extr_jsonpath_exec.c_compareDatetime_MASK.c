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
typedef  int /*<<< orphan*/  PGFunction ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  DATEOID 132 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
#define  TIMEOID 131 
#define  TIMESTAMPOID 130 
#define  TIMESTAMPTZOID 129 
#define  TIMETZOID 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  date_cmp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  time_cmp ; 
 int /*<<< orphan*/  timestamp_cmp ; 
 int /*<<< orphan*/  timetz_cmp ; 

__attribute__((used)) static int
FUNC10(Datum val1, Oid typid1, Datum val2, Oid typid2,
				bool useTz, bool *cast_error)
{
	PGFunction cmpfunc;

	*cast_error = false;

	switch (typid1)
	{
		case DATEOID:
			switch (typid2)
			{
				case DATEOID:
					cmpfunc = date_cmp;

					break;

				case TIMESTAMPOID:
					return FUNC6(FUNC0(val1),
											  FUNC2(val2),
											  useTz);

				case TIMESTAMPTZOID:
					return FUNC7(FUNC0(val1),
												FUNC3(val2),
												useTz);

				case TIMEOID:
				case TIMETZOID:
					*cast_error = true; /* uncomparable types */
					return 0;

				default:
					FUNC9(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
						 typid2);
			}
			break;

		case TIMEOID:
			switch (typid2)
			{
				case TIMEOID:
					cmpfunc = time_cmp;

					break;

				case TIMETZOID:
					val1 = FUNC5(val1, useTz);
					cmpfunc = timetz_cmp;

					break;

				case DATEOID:
				case TIMESTAMPOID:
				case TIMESTAMPTZOID:
					*cast_error = true; /* uncomparable types */
					return 0;

				default:
					FUNC9(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
						 typid2);
			}
			break;

		case TIMETZOID:
			switch (typid2)
			{
				case TIMEOID:
					val2 = FUNC5(val2, useTz);
					cmpfunc = timetz_cmp;

					break;

				case TIMETZOID:
					cmpfunc = timetz_cmp;

					break;

				case DATEOID:
				case TIMESTAMPOID:
				case TIMESTAMPTZOID:
					*cast_error = true; /* uncomparable types */
					return 0;

				default:
					FUNC9(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
						 typid2);
			}
			break;

		case TIMESTAMPOID:
			switch (typid2)
			{
				case DATEOID:
					return -FUNC6(FUNC0(val2),
											   FUNC2(val1),
											   useTz);

				case TIMESTAMPOID:
					cmpfunc = timestamp_cmp;

					break;

				case TIMESTAMPTZOID:
					return FUNC8(FUNC2(val1),
													 FUNC3(val2),
													 useTz);

				case TIMEOID:
				case TIMETZOID:
					*cast_error = true; /* uncomparable types */
					return 0;

				default:
					FUNC9(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
						 typid2);
			}
			break;

		case TIMESTAMPTZOID:
			switch (typid2)
			{
				case DATEOID:
					return -FUNC7(FUNC0(val2),
												 FUNC3(val1),
												 useTz);

				case TIMESTAMPOID:
					return -FUNC8(FUNC2(val2),
													  FUNC3(val1),
													  useTz);

				case TIMESTAMPTZOID:
					cmpfunc = timestamp_cmp;

					break;

				case TIMEOID:
				case TIMETZOID:
					*cast_error = true; /* uncomparable types */
					return 0;

				default:
					FUNC9(ERROR, "unrecognized SQL/JSON datetime type oid: %u",
						 typid2);
			}
			break;

		default:
			FUNC9(ERROR, "unrecognized SQL/JSON datetime type oid: %u", typid1);
	}

	if (*cast_error)
		return 0;				/* cast error */

	return FUNC1(FUNC4(cmpfunc, val1, val2));
}