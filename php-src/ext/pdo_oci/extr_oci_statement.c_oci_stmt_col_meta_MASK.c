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
typedef  scalar_t__ zend_long ;
typedef  int ub2 ;
typedef  scalar_t__ ub1 ;
typedef  int sb1 ;
struct TYPE_4__ {scalar_t__ column_count; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int /*<<< orphan*/  err; int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ pdo_oci_stmt ;
typedef  int /*<<< orphan*/  dvoid ;
typedef  int /*<<< orphan*/  OCIParam ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  OCIAttrGet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCIParamGet ; 
 int /*<<< orphan*/  OCI_ATTR_CHARSET_FORM ; 
 int /*<<< orphan*/  OCI_ATTR_DATA_TYPE ; 
 int /*<<< orphan*/  OCI_ATTR_IS_NULL ; 
 int /*<<< orphan*/  OCI_ATTR_PRECISION ; 
 int /*<<< orphan*/  OCI_ATTR_SCALE ; 
 int /*<<< orphan*/  OCI_DTYPE_PARAM ; 
 int /*<<< orphan*/  OCI_HTYPE_STMT ; 
 int PDO_PARAM_LOB ; 
 int PDO_PARAM_STR ; 
 scalar_t__ SQLCS_NCHAR ; 
#define  SQLT_AFC 149 
#define  SQLT_BDOUBLE 148 
#define  SQLT_BFILE 147 
#define  SQLT_BFLOAT 146 
#define  SQLT_BIN 145 
#define  SQLT_BLOB 144 
#define  SQLT_CHR 143 
#define  SQLT_CLOB 142 
#define  SQLT_DAT 141 
#define  SQLT_FLT 140 
#define  SQLT_IBDOUBLE 139 
#define  SQLT_IBFLOAT 138 
#define  SQLT_INTERVAL_DS 137 
#define  SQLT_INTERVAL_YM 136 
#define  SQLT_LBI 135 
#define  SQLT_LNG 134 
#define  SQLT_NUM 133 
#define  SQLT_RDD 132 
#define  SQLT_TIMESTAMP 131 
#define  SQLT_TIMESTAMP_LTZ 130 
#define  SQLT_TIMESTAMP_TZ 129 
#define  SQLT_VCS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(pdo_stmt_t *stmt, zend_long colno, zval *return_value) /* {{{ */
{
	pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;
	OCIParam *param = NULL;
	ub2 dtype, precis;
	sb1 scale;
	zval flags;
	ub1 isnull, charset_form;
	if (!S->stmt) {
		return FAILURE;
	}
	if (colno >= stmt->column_count) {
		/* error invalid column */
		return FAILURE;
	}

	FUNC7(return_value);
	FUNC7(&flags);

	/* describe the column */
	FUNC1(OCIParamGet, (S->stmt, OCI_HTYPE_STMT, S->err, (dvoid*)&param, colno+1));

	/* column data type */
	FUNC2(OCIAttrGet, "OCI_ATTR_DATA_TYPE",
			(param, OCI_DTYPE_PARAM, &dtype, 0, OCI_ATTR_DATA_TYPE, S->err));

	/* column precision */
	FUNC2(OCIAttrGet, "OCI_ATTR_PRECISION",
			(param, OCI_DTYPE_PARAM, &precis, 0, OCI_ATTR_PRECISION, S->err));

	/* column scale */
	FUNC2(OCIAttrGet, "OCI_ATTR_SCALE",
			(param, OCI_DTYPE_PARAM, &scale, 0, OCI_ATTR_SCALE, S->err));

	/* string column charset form */
	if (dtype == SQLT_CHR || dtype == SQLT_VCS || dtype == SQLT_AFC || dtype == SQLT_CLOB) {
		FUNC2(OCIAttrGet, "OCI_ATTR_CHARSET_FORM",
			(param, OCI_DTYPE_PARAM, &charset_form, 0, OCI_ATTR_CHARSET_FORM, S->err));
	}


	if (dtype) {
	/* if there is a declared type */
		switch (dtype) {
#ifdef SQLT_TIMESTAMP
		case SQLT_TIMESTAMP:
			FUNC4(return_value, "oci:decl_type", "TIMESTAMP");
			FUNC4(return_value, "native_type", "TIMESTAMP");
			break;
#endif
#ifdef SQLT_TIMESTAMP_TZ
		case SQLT_TIMESTAMP_TZ:
			FUNC4(return_value, "oci:decl_type", "TIMESTAMP WITH TIMEZONE");
			FUNC4(return_value, "native_type", "TIMESTAMP WITH TIMEZONE");
			break;
#endif
#ifdef SQLT_TIMESTAMP_LTZ
		case SQLT_TIMESTAMP_LTZ:
			FUNC4(return_value, "oci:decl_type", "TIMESTAMP WITH LOCAL TIMEZONE");
			FUNC4(return_value, "native_type", "TIMESTAMP WITH LOCAL TIMEZONE");
			break;
#endif
#ifdef SQLT_INTERVAL_YM
		case SQLT_INTERVAL_YM:
			FUNC4(return_value, "oci:decl_type", "INTERVAL YEAR TO MONTH");
			FUNC4(return_value, "native_type", "INTERVAL YEAR TO MONTH");
			break;
#endif
#ifdef SQLT_INTERVAL_DS
		case SQLT_INTERVAL_DS:
			FUNC4(return_value, "oci:decl_type", "INTERVAL DAY TO SECOND");
			FUNC4(return_value, "native_type", "INTERVAL DAY TO SECOND");
			break;
#endif
		case SQLT_DAT:
			FUNC4(return_value, "oci:decl_type", "DATE");
			FUNC4(return_value, "native_type", "DATE");
			break;
		case SQLT_FLT :
		case SQLT_NUM:
			/* if the precision is nonzero and scale is -127 then it is a FLOAT */
			if (scale == -127 && precis != 0) {
				FUNC4(return_value, "oci:decl_type", "FLOAT");
				FUNC4(return_value, "native_type", "FLOAT");
			} else {
				FUNC4(return_value, "oci:decl_type", "NUMBER");
				FUNC4(return_value, "native_type", "NUMBER");
			}
			break;
		case SQLT_LNG:
			FUNC4(return_value, "oci:decl_type", "LONG");
			FUNC4(return_value, "native_type", "LONG");
			break;
		case SQLT_BIN:
			FUNC4(return_value, "oci:decl_type", "RAW");
			FUNC4(return_value, "native_type", "RAW");
			break;
		case SQLT_LBI:
			FUNC4(return_value, "oci:decl_type", "LONG RAW");
			FUNC4(return_value, "native_type", "LONG RAW");
			break;
		case SQLT_CHR:
		case SQLT_VCS:
			if (charset_form == SQLCS_NCHAR) {
				FUNC4(return_value, "oci:decl_type", "NVARCHAR2");
				FUNC4(return_value, "native_type", "NVARCHAR2");
			} else {
				FUNC4(return_value, "oci:decl_type", "VARCHAR2");
				FUNC4(return_value, "native_type", "VARCHAR2");
			}
			break;
		case SQLT_AFC:
			if (charset_form == SQLCS_NCHAR) {
				FUNC4(return_value, "oci:decl_type", "NCHAR");
				FUNC4(return_value, "native_type", "NCHAR");
			} else {
				FUNC4(return_value, "oci:decl_type", "CHAR");
				FUNC4(return_value, "native_type", "CHAR");
			}
			break;
		case SQLT_BLOB:
			FUNC4(return_value, "oci:decl_type", "BLOB");
			FUNC6(&flags, "blob");
			FUNC4(return_value, "native_type", "BLOB");
			break;
		case SQLT_CLOB:
			if (charset_form == SQLCS_NCHAR) {
				FUNC4(return_value, "oci:decl_type", "NCLOB");
				FUNC4(return_value, "native_type", "NCLOB");
			} else {
				FUNC4(return_value, "oci:decl_type", "CLOB");
				FUNC4(return_value, "native_type", "CLOB");
			}
			FUNC6(&flags, "blob");
			break;
		case SQLT_BFILE:
			FUNC4(return_value, "oci:decl_type", "BFILE");
			FUNC6(&flags, "blob");
			FUNC4(return_value, "native_type", "BFILE");
			break;
		case SQLT_RDD:
			FUNC4(return_value, "oci:decl_type", "ROWID");
			FUNC4(return_value, "native_type", "ROWID");
			break;
		case SQLT_BFLOAT:
		case SQLT_IBFLOAT:
			FUNC4(return_value, "oci:decl_type", "BINARY_FLOAT");
			FUNC4(return_value, "native_type", "BINARY_FLOAT");
			break;
		case SQLT_BDOUBLE:
		case SQLT_IBDOUBLE:
			FUNC4(return_value, "oci:decl_type", "BINARY_DOUBLE");
			FUNC4(return_value, "native_type", "BINARY_DOUBLE");
			break;
		default:
			FUNC3(return_value, "oci:decl_type", dtype);
			FUNC4(return_value, "native_type", "UNKNOWN");
		}
	} else {
		/* if the column is NULL */
		FUNC3(return_value, "oci:decl_type", 0);
		FUNC4(return_value, "native_type", "NULL");
	}

	/* column can be null */
	FUNC2(OCIAttrGet, "OCI_ATTR_IS_NULL",
			(param, OCI_DTYPE_PARAM, &isnull, 0, OCI_ATTR_IS_NULL, S->err));

	if (isnull) {
		FUNC6(&flags, "nullable");
	} else {
		FUNC6(&flags, "not_null");
	}

	/* PDO type */
	switch (dtype) {
		case SQLT_BFILE:
		case SQLT_BLOB:
		case SQLT_CLOB:
			FUNC3(return_value, "pdo_type", PDO_PARAM_LOB);
			break;
		default:
			FUNC3(return_value, "pdo_type", PDO_PARAM_STR);
	}

	FUNC3(return_value, "scale", scale);
	FUNC5(return_value, "flags", &flags);

	FUNC0(param, OCI_DTYPE_PARAM);
	return SUCCESS;
}