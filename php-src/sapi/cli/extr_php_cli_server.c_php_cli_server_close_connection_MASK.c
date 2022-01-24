#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sock; int /*<<< orphan*/  addr_str; } ;
typedef  TYPE_1__ php_cli_server_client ;
struct TYPE_6__ {int /*<<< orphan*/  clients; } ;
typedef  TYPE_2__ php_cli_server ;

/* Variables and functions */
 int /*<<< orphan*/  PHP_CLI_SERVER_LOG_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(php_cli_server *server, php_cli_server_client *client) /* {{{ */
{
	FUNC0(PHP_CLI_SERVER_LOG_MESSAGE, "%s Closing", client->addr_str);

	FUNC1(&server->clients, client->sock);
}