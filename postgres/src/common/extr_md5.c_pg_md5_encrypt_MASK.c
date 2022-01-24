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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char const*) ; 

bool
FUNC6(const char *passwd, const char *salt, size_t salt_len,
			   char *buf)
{
	size_t		passwd_len = FUNC5(passwd);

	/* +1 here is just to avoid risk of unportable malloc(0) */
	char	   *crypt_buf = FUNC1(passwd_len + salt_len + 1);
	bool		ret;

	if (!crypt_buf)
		return false;

	/*
	 * Place salt at the end because it may be known by users trying to crack
	 * the MD5 output.
	 */
	FUNC2(crypt_buf, passwd, passwd_len);
	FUNC2(crypt_buf + passwd_len, salt, salt_len);

	FUNC4(buf, "md5");
	ret = FUNC3(crypt_buf, passwd_len + salt_len, buf + 3);

	FUNC0(crypt_buf);

	return ret;
}