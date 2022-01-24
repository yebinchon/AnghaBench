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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_serialize_data ;
struct TYPE_3__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_str ;
typedef  int /*<<< orphan*/  php_serialize_data_t ;
typedef  int /*<<< orphan*/  mpz_ptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(zval *object, unsigned char **buffer, size_t *buf_len, zend_serialize_data *data) /* {{{ */
{
	mpz_ptr gmpnum = FUNC0(object);
	smart_str buf = {0};
	zval zv;
	php_serialize_data_t serialize_data;

	FUNC2(serialize_data);

	FUNC8(&zv, gmpnum, 10);
	FUNC9(&buf, &zv, &serialize_data);
	FUNC12(&zv);

	FUNC5(&zv, FUNC10(FUNC6(object)));
	FUNC9(&buf, &zv, &serialize_data);

	FUNC1(serialize_data);
	*buffer = (unsigned char *) FUNC7(FUNC4(buf.s), FUNC3(buf.s));
	*buf_len = FUNC3(buf.s);
	FUNC11(buf.s, 0);

	return SUCCESS;
}