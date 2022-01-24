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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_uchar ;
struct TYPE_5__ {unsigned int param_count; TYPE_1__* param_bind; } ;
struct TYPE_4__ {int type; int flags; int /*<<< orphan*/  zv; } ;
typedef  TYPE_2__ MYSQLND_STMT_DATA ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 scalar_t__ IS_STRING ; 
 int MYSQLND_PARAM_BIND_BLOB_USED ; 
#define  MYSQL_TYPE_DOUBLE 133 
#define  MYSQL_TYPE_LONG 132 
#define  MYSQL_TYPE_LONGLONG 131 
#define  MYSQL_TYPE_LONG_BLOB 130 
#define  MYSQL_TYPE_TINY 129 
#define  MYSQL_TYPE_VAR_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,size_t const) ; 

__attribute__((used)) static void
FUNC15(MYSQLND_STMT_DATA * stmt, zval * copies, zend_uchar * buf, zend_uchar ** p, size_t null_byte_offset)
{
	unsigned int i;
	for (i = 0; i < stmt->param_count; i++) {
		zval *data, *parameter = &stmt->param_bind[i].zv;

		FUNC0(parameter);
		data = (copies && !FUNC2(copies[i]))? &copies[i]: parameter;
		/* Handle long data */
		if (!FUNC3(parameter) && FUNC7(data) == IS_NULL) {
			(buf + null_byte_offset)[i/8] |= (zend_uchar) (1 << (i & 7));
		} else {
			switch (stmt->param_bind[i].type) {
				case MYSQL_TYPE_DOUBLE:
					FUNC8(data);
					FUNC9(*p, FUNC1(data));
					(*p) += 8;
					break;
				case MYSQL_TYPE_LONGLONG:
					if (FUNC7(data) == IS_STRING) {
						goto send_string;
					}
					/* data has alreade been converted to long */
					FUNC12(*p, FUNC4(data));
					(*p) += 8;
					break;
				case MYSQL_TYPE_LONG:
					if (FUNC7(data) == IS_STRING) {
						goto send_string;
					}
					/* data has alreade been converted to long */
					FUNC11(*p, FUNC4(data));
					(*p) += 4;
					break;
				case MYSQL_TYPE_TINY:
					if (FUNC7(data) == IS_STRING) {
						goto send_string;
					}
					FUNC10(*p, FUNC4(data));
					(*p)++;
					break;
				case MYSQL_TYPE_LONG_BLOB:
					if (stmt->param_bind[i].flags & MYSQLND_PARAM_BIND_BLOB_USED) {
						stmt->param_bind[i].flags &= ~MYSQLND_PARAM_BIND_BLOB_USED;
					} else {
						/* send_long_data() not called, send empty string */
						*p = FUNC14(*p, 0);
					}
					break;
				case MYSQL_TYPE_VAR_STRING:
send_string:
					{
						const size_t len = FUNC5(data);
						/* to is after p. The latter hasn't been moved */
						*p = FUNC14(*p, len);
						FUNC13(*p, FUNC6(data), len);
						(*p) += len;
					}
					break;
				default:
					/* Won't happen, but set to NULL */
					(buf + null_byte_offset)[i/8] |= (zend_uchar) (1 << (i & 7));
					break;
			}
		}
	}
}