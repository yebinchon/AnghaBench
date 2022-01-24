#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {int /*<<< orphan*/  headers_original_case; int /*<<< orphan*/  headers; } ;
struct TYPE_5__ {scalar_t__ current_header_value_len; int /*<<< orphan*/ * current_header_value; int /*<<< orphan*/  current_header_name_len; int /*<<< orphan*/ * current_header_name; scalar_t__ current_header_name_allocated; TYPE_1__ request; } ;
typedef  TYPE_2__ php_cli_server_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(php_cli_server_client *client)
{
	/* strip off the colon */
	zend_string *orig_header_name = FUNC6(client->current_header_name, client->current_header_name_len, 1);
	zend_string *lc_header_name = FUNC5(client->current_header_name_len, 1);
	FUNC4(FUNC1(lc_header_name), client->current_header_name, client->current_header_name_len);
	FUNC0(orig_header_name);
	FUNC0(lc_header_name);
	FUNC3(&client->request.headers, lc_header_name, client->current_header_value);
	FUNC3(&client->request.headers_original_case, orig_header_name, client->current_header_value);
	FUNC7(lc_header_name, 1);
	FUNC7(orig_header_name, 1);

	if (client->current_header_name_allocated) {
		FUNC2(client->current_header_name, 1);
		client->current_header_name_allocated = 0;
	}
	client->current_header_name = NULL;
	client->current_header_name_len = 0;
	client->current_header_value = NULL;
	client->current_header_value_len = 0;
}