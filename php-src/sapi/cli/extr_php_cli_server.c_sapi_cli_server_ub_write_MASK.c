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
typedef  int /*<<< orphan*/  php_cli_server_client ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  server_context ; 

__attribute__((used)) static size_t FUNC2(const char *str, size_t str_length) /* {{{ */
{
	php_cli_server_client *client = FUNC0(server_context);
	if (!client) {
		return 0;
	}
	return FUNC1(client, str, str_length);
}