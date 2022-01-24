#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_uchar ;
typedef  scalar_t__ enum_func_status ;
struct TYPE_10__ {TYPE_1__* data; } ;
struct TYPE_9__ {int param_count; int send_types_to_server; int /*<<< orphan*/  error_info; } ;
typedef  TYPE_1__ MYSQLND_STMT_DATA ;
typedef  TYPE_2__ MYSQLND_STMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FAIL ; 
 scalar_t__ PASS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum_func_status
FUNC12(MYSQLND_STMT * s, zend_uchar **buf, zend_uchar **p, size_t *buf_len )
{
	MYSQLND_STMT_DATA * stmt = s->data;
	zend_uchar * provided_buffer = *buf;
	size_t data_size = 0;
	zval *copies = NULL;/* if there are different types */
	enum_func_status ret = FAIL;
	int resend_types_next_time = 0;
	size_t null_byte_offset;

	FUNC0("mysqlnd_stmt_execute_store_params");

	{
		unsigned int null_count = (stmt->param_count + 7) / 8;
		if (FAIL == FUNC7(buf, p, buf_len, provided_buffer, null_count)) {
			FUNC3(stmt->error_info);
			goto end;
		}
		/* put `null` bytes */
		null_byte_offset = *p - *buf;
		FUNC5(*p, 0, null_count);
		*p += null_count;
	}

/* 1. Store type information */
	/*
	  check if need to send the types even if stmt->send_types_to_server is 0. This is because
	  if we send "i" (42) then the type will be int and the server will expect int. However, if next
	  time we try to send > LONG_MAX, the conversion to string will send a string and the server
	  won't expect it and interpret the value as 0. Thus we need to resend the types, if any such values
	  occur, and force resend for the next execution.
	*/
	if (FAIL == FUNC8(stmt, &copies, &resend_types_next_time)) {
		goto end;
	}

	FUNC4(*p, stmt->send_types_to_server);
	(*p)++;

	if (stmt->send_types_to_server) {
		if (FAIL == FUNC7(buf, p, buf_len, provided_buffer, stmt->param_count * 2)) {
			FUNC3(stmt->error_info);
			goto end;
		}
		FUNC10(stmt, copies, p);
	}

	stmt->send_types_to_server = resend_types_next_time;

/* 2. Store data */
	/* 2.1 Calculate how much space we need */
	if (FAIL == FUNC6(stmt, &copies, &data_size)) {
		goto end;
	}

	/* 2.2 Enlarge the buffer, if needed */
	if (FAIL == FUNC7(buf, p, buf_len, provided_buffer, data_size)) {
		FUNC3(stmt->error_info);
		goto end;
	}

	/* 2.3 Store the actual data */
	FUNC9(stmt, copies, *buf, p, null_byte_offset);

	ret = PASS;
end:
	FUNC11(stmt, copies);

	FUNC1("ret=%s", ret == PASS? "PASS":"FAIL");
	FUNC2(ret);
}