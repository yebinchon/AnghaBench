#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t zend_ulong ;
typedef  int /*<<< orphan*/  enum_func_status ;
struct TYPE_12__ {unsigned int nr; } ;
struct TYPE_11__ {TYPE_1__* command; } ;
struct TYPE_10__ {scalar_t__ charset_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* enable_ssl ) (TYPE_3__* const,size_t const,size_t const,unsigned int) ;} ;
typedef  TYPE_2__ MYSQLND_SESSION_OPTIONS ;
typedef  TYPE_3__ MYSQLND_CONN_DATA ;
typedef  TYPE_4__ MYSQLND_CHARSET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FAIL ; 
 TYPE_4__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__* const,size_t const,size_t const,unsigned int) ; 

__attribute__((used)) static enum_func_status
FUNC4(MYSQLND_CONN_DATA * const conn,
								unsigned int charset_no,
								const size_t server_capabilities,
								const MYSQLND_SESSION_OPTIONS * const session_options,
								const zend_ulong mysql_flags)
{
	enum_func_status ret = FAIL;
	const MYSQLND_CHARSET * charset;
	FUNC0("mysqlnd_switch_to_ssl_if_needed");

	if (session_options->charset_name && (charset = FUNC2(session_options->charset_name))) {
		charset_no = charset->nr;
	}

	{
		const size_t client_capabilities = mysql_flags;
		ret = conn->command->enable_ssl(conn, client_capabilities, server_capabilities, charset_no);
	}
	FUNC1(ret);
}