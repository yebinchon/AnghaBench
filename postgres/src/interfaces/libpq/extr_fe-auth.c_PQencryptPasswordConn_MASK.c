#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  errorMessage; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int MAX_ALGORITHM_NAME_LEN ; 
 scalar_t__ MD5_PASSWD_LEN ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (scalar_t__) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int FUNC14 (char const*) ; 

char *
FUNC15(PGconn *conn, const char *passwd, const char *user,
					  const char *algorithm)
{
#define MAX_ALGORITHM_NAME_LEN 50
	char		algobuf[MAX_ALGORITHM_NAME_LEN + 1];
	char	   *crypt_pwd = NULL;

	if (!conn)
		return NULL;

	/* If no algorithm was given, ask the server. */
	if (algorithm == NULL)
	{
		PGresult   *res;
		char	   *val;

		res = FUNC1(conn, "show password_encryption");
		if (res == NULL)
		{
			/* PQexec() should've set conn->errorMessage already */
			return NULL;
		}
		if (FUNC5(res) != PGRES_TUPLES_OK)
		{
			/* PQexec() should've set conn->errorMessage already */
			FUNC0(res);
			return NULL;
		}
		if (FUNC4(res) != 1 || FUNC3(res) != 1)
		{
			FUNC0(res);
			FUNC11(&conn->errorMessage,
							  FUNC7("unexpected shape of result set returned for SHOW\n"));
			return NULL;
		}
		val = FUNC2(res, 0, 0);

		if (FUNC14(val) > MAX_ALGORITHM_NAME_LEN)
		{
			FUNC0(res);
			FUNC11(&conn->errorMessage,
							  FUNC7("password_encryption value too long\n"));
			return NULL;
		}
		FUNC13(algobuf, val);
		FUNC0(res);

		algorithm = algobuf;
	}

	/*
	 * Also accept "on" and "off" as aliases for "md5", because
	 * password_encryption was a boolean before PostgreSQL 10.  We refuse to
	 * send the password in plaintext even if it was "off".
	 */
	if (FUNC12(algorithm, "on") == 0 ||
		FUNC12(algorithm, "off") == 0)
		algorithm = "md5";

	/*
	 * Ok, now we know what algorithm to use
	 */
	if (FUNC12(algorithm, "scram-sha-256") == 0)
	{
		crypt_pwd = FUNC9(passwd);
	}
	else if (FUNC12(algorithm, "md5") == 0)
	{
		crypt_pwd = FUNC8(MD5_PASSWD_LEN + 1);
		if (crypt_pwd)
		{
			if (!FUNC10(passwd, user, FUNC14(user), crypt_pwd))
			{
				FUNC6(crypt_pwd);
				crypt_pwd = NULL;
			}
		}
	}
	else
	{
		FUNC11(&conn->errorMessage,
						  FUNC7("unrecognized password encryption algorithm \"%s\"\n"),
						  algorithm);
		return NULL;
	}

	if (!crypt_pwd)
		FUNC11(&conn->errorMessage,
						  FUNC7("out of memory\n"));

	return crypt_pwd;
}