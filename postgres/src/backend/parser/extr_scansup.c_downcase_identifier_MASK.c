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
 scalar_t__ FUNC0 (unsigned char) ; 
 int NAMEDATALEN ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 char* FUNC2 (int) ; 
 int FUNC3 () ; 
 unsigned char FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

char *
FUNC6(const char *ident, int len, bool warn, bool truncate)
{
	char	   *result;
	int			i;
	bool		enc_is_single_byte;

	result = FUNC2(len + 1);
	enc_is_single_byte = FUNC3() == 1;

	/*
	 * SQL99 specifies Unicode-aware case normalization, which we don't yet
	 * have the infrastructure for.  Instead we use tolower() to provide a
	 * locale-aware translation.  However, there are some locales where this
	 * is not right either (eg, Turkish may do strange things with 'i' and
	 * 'I').  Our current compromise is to use tolower() for characters with
	 * the high bit set, as long as they aren't part of a multi-byte
	 * character, and use an ASCII-only downcasing for 7-bit characters.
	 */
	for (i = 0; i < len; i++)
	{
		unsigned char ch = (unsigned char) ident[i];

		if (ch >= 'A' && ch <= 'Z')
			ch += 'a' - 'A';
		else if (enc_is_single_byte && FUNC0(ch) && FUNC1(ch))
			ch = FUNC4(ch);
		result[i] = (char) ch;
	}
	result[i] = '\0';

	if (i >= NAMEDATALEN && truncate)
		FUNC5(result, i, warn);

	return result;
}