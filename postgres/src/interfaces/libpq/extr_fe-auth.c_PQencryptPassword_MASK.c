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
 scalar_t__ MD5_PASSWD_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

char *
FUNC4(const char *passwd, const char *user)
{
	char	   *crypt_pwd;

	crypt_pwd = FUNC1(MD5_PASSWD_LEN + 1);
	if (!crypt_pwd)
		return NULL;

	if (!FUNC2(passwd, user, FUNC3(user), crypt_pwd))
	{
		FUNC0(crypt_pwd);
		return NULL;
	}

	return crypt_pwd;
}