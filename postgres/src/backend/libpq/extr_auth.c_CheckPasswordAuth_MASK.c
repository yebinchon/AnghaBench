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
 int /*<<< orphan*/  AUTH_REQ_PASSWORD ; 
 int STATUS_EOF ; 
 int STATUS_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*,char**) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(Port *port, char **logdetail)
{
	char	   *passwd;
	int			result;
	char	   *shadow_pass;

	FUNC4(port, AUTH_REQ_PASSWORD, NULL, 0);

	passwd = FUNC3(port);
	if (passwd == NULL)
		return STATUS_EOF;		/* client wouldn't send password */

	shadow_pass = FUNC0(port->user_name, logdetail);
	if (shadow_pass)
	{
		result = FUNC2(port->user_name, shadow_pass, passwd,
									logdetail);
	}
	else
		result = STATUS_ERROR;

	if (shadow_pass)
		FUNC1(shadow_pass);
	FUNC1(passwd);

	return result;
}