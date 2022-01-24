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
typedef  int uint32_t ;
typedef  scalar_t__ u_char ;
struct php_crypt_extended_data {char* output; int /*<<< orphan*/  initialized; } ;
typedef  int /*<<< orphan*/  keybuf ;

/* Variables and functions */
 char const _PASSWORD_EFMT1 ; 
 char const* ascii64 ; 
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ ,int,struct php_crypt_extended_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct php_crypt_extended_data*) ; 
 scalar_t__ FUNC4 (char*,struct php_crypt_extended_data*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int,struct php_crypt_extended_data*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct php_crypt_extended_data*) ; 

char *
FUNC8(const unsigned char *key, const char *setting,
	struct php_crypt_extended_data *data)
{
	int		i;
	uint32_t	count, salt, l, r0, r1, keybuf[2];
	u_char		*p, *q;

	if (!data->initialized)
		FUNC3(data);

	/*
	 * Copy the key, shifting each character up by one bit
	 * and padding with zeros.
	 */
	q = (u_char *) keybuf;
	while ((size_t)(q - (u_char *) keybuf) < sizeof(keybuf)) {
		*q++ = *key << 1;
		if (*key)
			key++;
	}
	if (FUNC4((char *) keybuf, data))
		return(NULL);

	if (*setting == _PASSWORD_EFMT1) {
		/*
		 * "new"-style:
		 *	setting - underscore, 4 chars of count, 4 chars of salt
		 *	key - unlimited characters
		 */
		for (i = 1, count = 0; i < 5; i++) {
			int value = FUNC1(setting[i]);
			if (ascii64[value] != setting[i])
				return(NULL);
			count |= value << (i - 1) * 6;
		}
		if (!count)
			return(NULL);

		for (i = 5, salt = 0; i < 9; i++) {
			int value = FUNC1(setting[i]);
			if (ascii64[value] != setting[i])
				return(NULL);
			salt |= value << (i - 5) * 6;
		}

		while (*key) {
			/*
			 * Encrypt the key with itself.
			 */
			if (FUNC2((char *) keybuf, (char *) keybuf,
			    0, 1, data))
				return(NULL);
			/*
			 * And XOR with the next 8 characters of the key.
			 */
			q = (u_char *) keybuf;
			while ((size_t)(q - (u_char *) keybuf) < sizeof(keybuf) && *key)
				*q++ ^= *key++ << 1;

			if (FUNC4((char *) keybuf, data))
				return(NULL);
		}
		FUNC6(data->output, setting, 9);
		data->output[9] = '\0';
		p = (u_char *) data->output + 9;
	} else {
		/*
		 * "old"-style:
		 *	setting - 2 chars of salt
		 *	key - up to 8 characters
		 */
		count = 25;

		if (FUNC0(setting[0]) || FUNC0(setting[1]))
			return(NULL);

		salt = (FUNC1(setting[1]) << 6)
		     |  FUNC1(setting[0]);

		data->output[0] = setting[0];
		data->output[1] = setting[1];
		p = (u_char *) data->output + 2;
	}
	FUNC7(salt, data);
	/*
	 * Do it.
	 */
	if (FUNC5(0, 0, &r0, &r1, count, data))
		return(NULL);
	/*
	 * Now encode the result...
	 */
	l = (r0 >> 8);
	*p++ = ascii64[(l >> 18) & 0x3f];
	*p++ = ascii64[(l >> 12) & 0x3f];
	*p++ = ascii64[(l >> 6) & 0x3f];
	*p++ = ascii64[l & 0x3f];

	l = (r0 << 16) | ((r1 >> 16) & 0xffff);
	*p++ = ascii64[(l >> 18) & 0x3f];
	*p++ = ascii64[(l >> 12) & 0x3f];
	*p++ = ascii64[(l >> 6) & 0x3f];
	*p++ = ascii64[l & 0x3f];

	l = r1 << 2;
	*p++ = ascii64[(l >> 12) & 0x3f];
	*p++ = ascii64[(l >> 6) & 0x3f];
	*p++ = ascii64[l & 0x3f];
	*p = 0;

	return(data->output);
}