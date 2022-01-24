#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  user_name; } ;
typedef  TYPE_1__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_REQ_MD5 ; 
 scalar_t__ Db_user_namespace ; 
 int /*<<< orphan*/  ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  LOG ; 
 int STATUS_EOF ; 
 int STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC8(Port *port, char *shadow_pass, char **logdetail)
{
	char		md5Salt[4];		/* Password salt */
	char	   *passwd;
	int			result;

	if (Db_user_namespace)
		FUNC0(FATAL,
				(FUNC1(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
				 FUNC2("MD5 authentication is not supported when \"db_user_namespace\" is enabled")));

	/* include the salt to use for computing the response */
	if (!FUNC5(md5Salt, 4))
	{
		FUNC0(LOG,
				(FUNC2("could not generate random MD5 salt")));
		return STATUS_ERROR;
	}

	FUNC7(port, AUTH_REQ_MD5, md5Salt, 4);

	passwd = FUNC6(port);
	if (passwd == NULL)
		return STATUS_EOF;		/* client wouldn't send password */

	if (shadow_pass)
		result = FUNC3(port->user_name, shadow_pass, passwd,
								  md5Salt, 4, logdetail);
	else
		result = STATUS_ERROR;

	FUNC4(passwd);

	return result;
}