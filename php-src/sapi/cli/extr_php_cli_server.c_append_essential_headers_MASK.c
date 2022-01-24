#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* val; } ;
typedef  TYPE_2__ zend_string ;
struct timeval {int /*<<< orphan*/  tv_sec; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  smart_str ;
struct TYPE_7__ {int /*<<< orphan*/  headers; } ;
struct TYPE_9__ {TYPE_1__ request; } ;
typedef  TYPE_3__ php_cli_server_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(smart_str* buffer, php_cli_server_client *client, int persistent) /* {{{ */
{
	char *val;
	struct timeval tv = {0};

	if (NULL != (val = FUNC4(&client->request.headers, "host", sizeof("host")-1))) {
		FUNC3(buffer, "Host: ", persistent);
		FUNC3(buffer, val, persistent);
		FUNC3(buffer, "\r\n", persistent);
	}

	if (!FUNC0(&tv, NULL)) {
		zend_string *dt = FUNC1("D, d M Y H:i:s", sizeof("D, d M Y H:i:s") - 1, tv.tv_sec, 0);
		FUNC3(buffer, "Date: ", persistent);
		FUNC3(buffer, dt->val, persistent);
		FUNC3(buffer, " GMT\r\n", persistent);
		FUNC5(dt, 0);
	}

	FUNC2(buffer, "Connection: close\r\n", sizeof("Connection: close\r\n") - 1, persistent);
}