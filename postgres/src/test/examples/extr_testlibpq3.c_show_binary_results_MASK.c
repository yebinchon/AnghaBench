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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(PGresult *res)
{
	int			i,
				j;
	int			i_fnum,
				t_fnum,
				b_fnum;

	/* Use PQfnumber to avoid assumptions about field order in result */
	i_fnum = FUNC0(res, "i");
	t_fnum = FUNC0(res, "t");
	b_fnum = FUNC0(res, "b");

	for (i = 0; i < FUNC3(res); i++)
	{
		char	   *iptr;
		char	   *tptr;
		char	   *bptr;
		int			blen;
		int			ival;

		/* Get the field values (we ignore possibility they are null!) */
		iptr = FUNC2(res, i, i_fnum);
		tptr = FUNC2(res, i, t_fnum);
		bptr = FUNC2(res, i, b_fnum);

		/*
		 * The binary representation of INT4 is in network byte order, which
		 * we'd better coerce to the local byte order.
		 */
		ival = FUNC4(*((uint32_t *) iptr));

		/*
		 * The binary representation of TEXT is, well, text, and since libpq
		 * was nice enough to append a zero byte to it, it'll work just fine
		 * as a C string.
		 *
		 * The binary representation of BYTEA is a bunch of bytes, which could
		 * include embedded nulls so we have to pay attention to field length.
		 */
		blen = FUNC1(res, i, b_fnum);

		FUNC5("tuple %d: got\n", i);
		FUNC5(" i = (%d bytes) %d\n",
			   FUNC1(res, i, i_fnum), ival);
		FUNC5(" t = (%d bytes) '%s'\n",
			   FUNC1(res, i, t_fnum), tptr);
		FUNC5(" b = (%d bytes) ", blen);
		for (j = 0; j < blen; j++)
			FUNC5("\\%03o", bptr[j]);
		FUNC5("\n\n");
	}
}