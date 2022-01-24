#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_long ;
struct TYPE_7__ {scalar_t__ column_count; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_8__ {TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_dblib_stmt ;
struct TYPE_9__ {int /*<<< orphan*/  link; } ;
typedef  TYPE_3__ pdo_dblib_db_handle ;
struct TYPE_10__ {scalar_t__ scale; scalar_t__ precision; } ;
typedef  TYPE_4__ DBTYPEINFO ;

/* Variables and functions */
 int FAILURE ; 
 int PDO_PARAM_INT ; 
 int PDO_PARAM_STR ; 
#define  SQLBIT 131 
#define  SQLINT1 130 
#define  SQLINT2 129 
#define  SQLINT4 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(pdo_stmt_t *stmt, zend_long colno, zval *return_value)
{
	pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
	pdo_dblib_db_handle *H = S->H;
	DBTYPEINFO* dbtypeinfo;
	int coltype;

	if(colno >= stmt->column_count || colno < 0)  {
		return FAILURE;
	}

	FUNC2(return_value);

	dbtypeinfo = FUNC6(H->link, colno+1);

	if(!dbtypeinfo) return FAILURE;

	coltype = FUNC5(H->link, colno+1);

	FUNC0(return_value, "max_length", FUNC3(H->link, colno+1) );
	FUNC0(return_value, "precision", (int) dbtypeinfo->precision );
	FUNC0(return_value, "scale", (int) dbtypeinfo->scale );
	FUNC1(return_value, "column_source", FUNC4(H->link, colno+1));
	FUNC1(return_value, "native_type", FUNC8(coltype));
	FUNC0(return_value, "native_type_id", coltype);
	FUNC0(return_value, "native_usertype_id", FUNC7(H->link, colno+1));

	switch (coltype) {
		case SQLBIT:
		case SQLINT1:
		case SQLINT2:
		case SQLINT4:
			FUNC0(return_value, "pdo_type", PDO_PARAM_INT);
			break;
		default:
			FUNC0(return_value, "pdo_type", PDO_PARAM_STR);
			break;
	}

	return 1;
}