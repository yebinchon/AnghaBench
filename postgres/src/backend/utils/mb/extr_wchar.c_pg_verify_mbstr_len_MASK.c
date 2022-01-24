#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int (* mbverifier ) (unsigned char const*,int) ;
struct TYPE_2__ {int (* mbverify ) (unsigned char const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 TYPE_1__* pg_wchar_table ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,int) ; 
 int FUNC6 (unsigned char const*,int) ; 

int
FUNC7(int encoding, const char *mbstr, int len, bool noError)
{
	mbverifier	mbverify;
	int			mb_len;

	FUNC0(FUNC2(encoding));

	/*
	 * In single-byte encodings, we need only reject nulls (\0).
	 */
	if (FUNC4(encoding) <= 1)
	{
		const char *nullpos = FUNC3(mbstr, 0, len);

		if (nullpos == NULL)
			return len;
		if (noError)
			return -1;
		FUNC5(encoding, nullpos, 1);
	}

	/* fetch function pointer just once */
	mbverify = pg_wchar_table[encoding].mbverify;

	mb_len = 0;

	while (len > 0)
	{
		int			l;

		/* fast path for ASCII-subset characters */
		if (!FUNC1(*mbstr))
		{
			if (*mbstr != '\0')
			{
				mb_len++;
				mbstr++;
				len--;
				continue;
			}
			if (noError)
				return -1;
			FUNC5(encoding, mbstr, len);
		}

		l = (*mbverify) ((const unsigned char *) mbstr, len);

		if (l < 0)
		{
			if (noError)
				return -1;
			FUNC5(encoding, mbstr, len);
		}

		mbstr += l;
		len -= l;
		mb_len++;
	}
	return mb_len;
}