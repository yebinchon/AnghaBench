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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ VARATT_SHORT_MAX ; 
 int VARHDRSZ ; 
 scalar_t__ VARHDRSZ_SHORT ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static Datum
FUNC5(const char *data, int datalen)
{
	char	   *p;

	p = (char *) FUNC4(datalen + VARHDRSZ);

	if (datalen + VARHDRSZ_SHORT <= VARATT_SHORT_MAX)
	{
		FUNC2(p, datalen + VARHDRSZ_SHORT);
		if (datalen)
			FUNC3(p + VARHDRSZ_SHORT, data, datalen);
	}
	else
	{
		FUNC1(p, datalen + VARHDRSZ);
		FUNC3(p + VARHDRSZ, data, datalen);
	}

	return FUNC0(p);
}