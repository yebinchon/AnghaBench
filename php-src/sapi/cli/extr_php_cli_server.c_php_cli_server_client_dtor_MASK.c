#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int file_fd; int /*<<< orphan*/  content_sender; scalar_t__ content_sender_initialized; int /*<<< orphan*/  addr_str; int /*<<< orphan*/  addr; int /*<<< orphan*/  request; } ;
typedef  TYPE_1__ php_cli_server_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(php_cli_server_client *client) /* {{{ */
{
	FUNC3(&client->request);
	if (client->file_fd >= 0) {
		FUNC0(client->file_fd);
		client->file_fd = -1;
	}
	FUNC1(client->addr, 1);
	FUNC1(client->addr_str, 1);
	if (client->content_sender_initialized) {
		FUNC2(&client->content_sender);
	}
}