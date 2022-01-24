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
typedef  char zend_uchar ;
typedef  int /*<<< orphan*/  enum_func_status ;

/* Variables and functions */
 unsigned int CR_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FAIL ; 
 size_t FUNC2 (int,int) ; 
 size_t const MYSQLND_SQLSTATE_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t const) ; 
 unsigned int FUNC4 (char const*) ; 
 char const* unknown_sqlstate ; 

__attribute__((used)) static enum_func_status
FUNC5(const zend_uchar * const buf, const size_t buf_len,
								 char *error, const size_t error_buf_len,
								 unsigned int *error_no, char *sqlstate)
{
	const zend_uchar *p = buf;
	size_t error_msg_len = 0;

	FUNC0("php_mysqlnd_read_error_from_line");

	*error_no = CR_UNKNOWN_ERROR;
	FUNC3(sqlstate, unknown_sqlstate, MYSQLND_SQLSTATE_LENGTH);

	if (buf_len > 2) {
		*error_no = FUNC4(p);
		p+= 2;
		/*
		  sqlstate is following. No need to check for buf_left_len as we checked > 2 above,
		  if it was >=2 then we would need a check
		*/
		if (*p == '#') {
			++p;
			if ((buf_len - (p - buf)) >= MYSQLND_SQLSTATE_LENGTH) {
				FUNC3(sqlstate, p, MYSQLND_SQLSTATE_LENGTH);
				p+= MYSQLND_SQLSTATE_LENGTH;
			} else {
				goto end;
			}
		}
		if ((buf_len - (p - buf)) > 0) {
			error_msg_len = FUNC2((int)((buf_len - (p - buf))), (int) (error_buf_len - 1));
			FUNC3(error, p, error_msg_len);
		}
	}
end:
	sqlstate[MYSQLND_SQLSTATE_LENGTH] = '\0';
	error[error_msg_len]= '\0';

	FUNC1(FAIL);
}