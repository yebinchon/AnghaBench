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
typedef  int /*<<< orphan*/  PasswordType ;

/* Variables and functions */
 int /*<<< orphan*/  MD5_PASSWD_CHARSET ; 
 int MD5_PASSWD_LEN ; 
 int /*<<< orphan*/  PASSWORD_TYPE_MD5 ; 
 int /*<<< orphan*/  PASSWORD_TYPE_PLAINTEXT ; 
 int /*<<< orphan*/  PASSWORD_TYPE_SCRAM_SHA_256 ; 
 int SCRAM_KEY_LEN ; 
 scalar_t__ FUNC0 (char const*,int*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 

PasswordType
FUNC4(const char *shadow_pass)
{
	char	   *encoded_salt;
	int			iterations;
	uint8		stored_key[SCRAM_KEY_LEN];
	uint8		server_key[SCRAM_KEY_LEN];

	if (FUNC2(shadow_pass, "md5", 3) == 0 &&
		FUNC1(shadow_pass) == MD5_PASSWD_LEN &&
		FUNC3(shadow_pass + 3, MD5_PASSWD_CHARSET) == MD5_PASSWD_LEN - 3)
		return PASSWORD_TYPE_MD5;
	if (FUNC0(shadow_pass, &iterations, &encoded_salt,
							 stored_key, server_key))
		return PASSWORD_TYPE_SCRAM_SHA_256;
	return PASSWORD_TYPE_PLAINTEXT;
}