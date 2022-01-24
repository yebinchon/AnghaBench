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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char const _PASSWORD_EFMT1 ; 
 void** _crypt_a64 ; 
 int FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char*,char*,long,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  des_initialised ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (long,long,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (char const*) ; 

char *
FUNC11(const char *key, const char *setting)
{
	int			i;
	uint32		count,
				salt,
				l,
				r0,
				r1,
				keybuf[2];
	char	   *p;
	uint8	   *q;
	static char output[21];

	if (!des_initialised)
		FUNC3();


	/*
	 * Copy the key, shifting each character up by one bit and padding with
	 * zeros.
	 */
	q = (uint8 *) keybuf;
	while (q - (uint8 *) keybuf - 8)
	{
		*q++ = *key << 1;
		if (*key != '\0')
			key++;
	}
	if (FUNC4((char *) keybuf))
		return NULL;

#ifndef DISABLE_XDES
	if (*setting == _PASSWORD_EFMT1)
	{
		/*
		 * "new"-style: setting must be a 9-character (underscore, then 4
		 * bytes of count, then 4 bytes of salt) string. See CRYPT(3) under
		 * the "Extended crypt" heading for further details.
		 *
		 * Unlimited characters of the input key are used. This is known as
		 * the "Extended crypt" DES method.
		 *
		 */
		if (FUNC10(setting) < 9)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC8("invalid salt")));

		for (i = 1, count = 0L; i < 5; i++)
			count |= FUNC1(setting[i]) << (i - 1) * 6;

		for (i = 5, salt = 0L; i < 9; i++)
			salt |= FUNC1(setting[i]) << (i - 5) * 6;

		while (*key)
		{
			/*
			 * Encrypt the key with itself.
			 */
			if (FUNC2((char *) keybuf, (char *) keybuf, 0L, 1))
				return NULL;

			/*
			 * And XOR with the next 8 characters of the key.
			 */
			q = (uint8 *) keybuf;
			while (q - (uint8 *) keybuf - 8 && *key)
				*q++ ^= *key++ << 1;

			if (FUNC4((char *) keybuf))
				return NULL;
		}
		FUNC0(output, setting, 10);

		/*
		 * Double check that we weren't given a short setting. If we were, the
		 * above code will probably have created weird values for count and
		 * salt, but we don't really care. Just make sure the output string
		 * doesn't have an extra NUL in it.
		 */
		p = output + FUNC10(output);
	}
	else
#endif							/* !DISABLE_XDES */
	{
		/*
		 * "old"-style: setting - 2 bytes of salt key - only up to the first 8
		 * characters of the input key are used.
		 */
		count = 25;

		if (FUNC10(setting) < 2)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC8("invalid salt")));

		salt = (FUNC1(setting[1]) << 6)
			| FUNC1(setting[0]);

		output[0] = setting[0];

		/*
		 * If the encrypted password that the salt was extracted from is only
		 * 1 character long, the salt will be corrupted.  We need to ensure
		 * that the output string doesn't have an extra NUL in it!
		 */
		output[1] = setting[1] ? setting[1] : output[0];

		p = output + 2;
	}
	FUNC9(salt);

	/*
	 * Do it.
	 */
	if (FUNC5(0L, 0L, &r0, &r1, count))
		return NULL;

	/*
	 * Now encode the result...
	 */
	l = (r0 >> 8);
	*p++ = _crypt_a64[(l >> 18) & 0x3f];
	*p++ = _crypt_a64[(l >> 12) & 0x3f];
	*p++ = _crypt_a64[(l >> 6) & 0x3f];
	*p++ = _crypt_a64[l & 0x3f];

	l = (r0 << 16) | ((r1 >> 16) & 0xffff);
	*p++ = _crypt_a64[(l >> 18) & 0x3f];
	*p++ = _crypt_a64[(l >> 12) & 0x3f];
	*p++ = _crypt_a64[(l >> 6) & 0x3f];
	*p++ = _crypt_a64[l & 0x3f];

	l = r1 << 2;
	*p++ = _crypt_a64[(l >> 12) & 0x3f];
	*p++ = _crypt_a64[(l >> 6) & 0x3f];
	*p++ = _crypt_a64[l & 0x3f];
	*p = 0;

	return output;
}