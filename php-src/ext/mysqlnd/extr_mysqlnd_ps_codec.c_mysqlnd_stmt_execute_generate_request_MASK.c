#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int zend_uchar ;
typedef  int zend_bool ;
typedef  scalar_t__ enum_func_status ;
struct TYPE_8__ {TYPE_2__* data; } ;
struct TYPE_6__ {int* buffer; size_t length; } ;
struct TYPE_7__ {scalar_t__ param_count; TYPE_1__ execute_cmd_buffer; scalar_t__ flags; int /*<<< orphan*/  stmt_id; } ;
typedef  TYPE_2__ MYSQLND_STMT_DATA ;
typedef  TYPE_3__ MYSQLND_STMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ PASS ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__* const,int**,int**,size_t*) ; 

enum_func_status
FUNC6(MYSQLND_STMT * const s, zend_uchar ** request, size_t *request_len, zend_bool * free_buffer)
{
	MYSQLND_STMT_DATA * stmt = s->data;
	zend_uchar	*p = stmt->execute_cmd_buffer.buffer,
				*cmd_buffer = stmt->execute_cmd_buffer.buffer;
	size_t cmd_buffer_length = stmt->execute_cmd_buffer.length;
	enum_func_status ret = PASS;

	FUNC0("mysqlnd_stmt_execute_generate_request");

	FUNC4(p, stmt->stmt_id);
	p += 4;

	/* flags is 4 bytes, we store just 1 */
	FUNC3(p, (zend_uchar) stmt->flags);
	p++;

	/* Make it all zero */
	FUNC4(p, 0);

	FUNC3(p, 1); /* and send 1 for iteration count */
	p+= 4;

	if (stmt->param_count != 0) {
	    ret = FUNC5(s, &cmd_buffer, &p, &cmd_buffer_length);
	}

	*free_buffer = (cmd_buffer != stmt->execute_cmd_buffer.buffer);
	*request_len = (p - cmd_buffer);
	*request = cmd_buffer;
	FUNC1("ret=%s", ret == PASS? "PASS":"FAIL");
	FUNC2(ret);
}