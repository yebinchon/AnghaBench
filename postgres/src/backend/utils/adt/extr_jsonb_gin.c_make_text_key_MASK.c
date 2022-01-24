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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  hashbuf ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char JGINFLAG_HASHED ; 
 int JGIN_MAXLENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static Datum
FUNC8(char flag, const char *str, int len)
{
	text	   *item;
	char		hashbuf[10];

	if (len > JGIN_MAXLENGTH)
	{
		uint32		hashval;

		hashval = FUNC0(FUNC4((const unsigned char *) str, len));
		FUNC7(hashbuf, sizeof(hashbuf), "%08x", hashval);
		str = hashbuf;
		len = 8;
		flag |= JGINFLAG_HASHED;
	}

	/*
	 * Now build the text Datum.  For simplicity we build a 4-byte-header
	 * varlena text Datum here, but we expect it will get converted to short
	 * header format when stored in the index.
	 */
	item = (text *) FUNC6(VARHDRSZ + len + 1);
	FUNC2(item, VARHDRSZ + len + 1);

	*FUNC3(item) = flag;

	FUNC5(FUNC3(item) + 1, str, len);

	return FUNC1(item);
}