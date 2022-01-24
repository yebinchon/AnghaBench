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
typedef  char uint32 ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  des_initialised ; 
 int FUNC1 (char,char,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char FUNC3 (char) ; 
 char FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 

__attribute__((used)) static int
FUNC6(const char *in, char *out, long salt, int count)
{
	uint32		buffer[2];
	uint32		l_out,
				r_out,
				rawl,
				rawr;
	int			retval;

	if (!des_initialised)
		FUNC0();

	FUNC5(salt);

	/* copy data to avoid assuming input is word-aligned */
	FUNC2(buffer, in, sizeof(buffer));

	rawl = FUNC4(buffer[0]);
	rawr = FUNC4(buffer[1]);

	retval = FUNC1(rawl, rawr, &l_out, &r_out, count);
	if (retval)
		return retval;

	buffer[0] = FUNC3(l_out);
	buffer[1] = FUNC3(r_out);

	/* copy data to avoid assuming output is word-aligned */
	FUNC2(out, buffer, sizeof(buffer));

	return retval;
}