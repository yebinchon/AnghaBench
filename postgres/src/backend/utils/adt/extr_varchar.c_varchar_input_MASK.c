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
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  VarChar ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_STRING_DATA_RIGHT_TRUNCATION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 size_t FUNC4 (char const*,size_t,size_t) ; 

__attribute__((used)) static VarChar *
FUNC5(const char *s, size_t len, int32 atttypmod)
{
	VarChar    *result;
	size_t		maxlen;

	maxlen = atttypmod - VARHDRSZ;

	if (atttypmod >= (int32) VARHDRSZ && len > maxlen)
	{
		/* Verify that extra characters are spaces, and clip them off */
		size_t		mbmaxlen = FUNC4(s, len, maxlen);
		size_t		j;

		for (j = mbmaxlen; j < len; j++)
		{
			if (s[j] != ' ')
				FUNC1(ERROR,
						(FUNC2(ERRCODE_STRING_DATA_RIGHT_TRUNCATION),
						 FUNC3("value too long for type character varying(%d)",
								(int) maxlen)));
		}

		len = mbmaxlen;
	}

	result = (VarChar *) FUNC0(s, len);
	return result;
}