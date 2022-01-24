#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int zend_long ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  my_ulonglong ;
struct TYPE_5__ {scalar_t__ type; int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  scalar_t__* MYSQL_ROW ;
typedef  int /*<<< orphan*/  MYSQL_RES ;
typedef  TYPE_1__ MYSQL_FIELD ;

/* Variables and functions */
 int MYSQLI_ASSOC ; 
 char* MYSQLI_LLU_SPEC ; 
 char* MYSQLI_LL_SPEC ; 
 int MYSQLI_NUM ; 
 int MYSQLND_FETCH_ASSOC ; 
 int MYSQLND_FETCH_NUM ; 
 int /*<<< orphan*/  MYSQLND_MYSQLI ; 
 scalar_t__ MYSQL_TYPE_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int UNSIGNED_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC20 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 

void FUNC25(zval *return_value, MYSQL_RES * result, zend_long fetchtype)
{
#if !defined(MYSQLI_USE_MYSQLND)
	MYSQL_ROW row;
	unsigned int	i, num_fields;
	MYSQL_FIELD		*fields;
	zend_ulong	*field_len;

	if (!(row = FUNC20(result))) {
		FUNC0();
	}

	if (fetchtype & MYSQLI_ASSOC) {
		fields = FUNC18(result);
	}

	FUNC9(return_value);
	field_len = FUNC19(result);
	num_fields = FUNC21(result);

	for (i = 0; i < num_fields; i++) {
		if (row[i]) {
			zval res;

#if MYSQL_VERSION_ID > 50002
			if (mysql_fetch_field_direct(result, i)->type == MYSQL_TYPE_BIT) {
				my_ulonglong llval;
				char tmp[22];
				switch (field_len[i]) {
					case 8:llval = (my_ulonglong)  bit_uint8korr(row[i]);break;
					case 7:llval = (my_ulonglong)  bit_uint7korr(row[i]);break;
					case 6:llval = (my_ulonglong)  bit_uint6korr(row[i]);break;
					case 5:llval = (my_ulonglong)  bit_uint5korr(row[i]);break;
					case 4:llval = (my_ulonglong)  bit_uint4korr(row[i]);break;
					case 3:llval = (my_ulonglong)  bit_uint3korr(row[i]);break;
					case 2:llval = (my_ulonglong)  bit_uint2korr(row[i]);break;
					case 1:llval = (my_ulonglong)  uint1korr(row[i]);break;
				}
				/* even though lval is declared as unsigned, the value
				 * may be negative. Therefor we cannot use MYSQLI_LLU_SPEC and must
				 * use MYSQLI_LL_SPEC.
				 */
				snprintf(tmp, sizeof(tmp), (mysql_fetch_field_direct(result, i)->flags & UNSIGNED_FLAG)? MYSQLI_LLU_SPEC : MYSQLI_LL_SPEC, llval);
				ZVAL_STRING(&res, tmp);
			} else
#endif
			{

				FUNC2(&res, row[i], field_len[i]);
			}

			if (fetchtype & MYSQLI_NUM) {
				FUNC8(return_value, i, &res);
			}
			if (fetchtype & MYSQLI_ASSOC) {
				if (fetchtype & MYSQLI_NUM && FUNC4(res)) {
					FUNC3(res);
				}
				FUNC6(return_value, fields[i].name, &res);
			}
		} else {
			if (fetchtype & MYSQLI_NUM) {
				FUNC7(return_value, i);
			}
			if (fetchtype & MYSQLI_ASSOC) {
				FUNC5(return_value, fields[i].name);
			}
		}
	}
#else
	mysqlnd_fetch_into(result, ((fetchtype & MYSQLI_NUM)? MYSQLND_FETCH_NUM:0) | ((fetchtype & MYSQLI_ASSOC)? MYSQLND_FETCH_ASSOC:0), return_value, MYSQLND_MYSQLI);
#endif
}