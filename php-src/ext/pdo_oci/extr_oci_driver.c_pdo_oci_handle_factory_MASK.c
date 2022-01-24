#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  vars ;
typedef  int /*<<< orphan*/  ub4 ;
typedef  int /*<<< orphan*/  text ;
struct pdo_data_src_parser {char* member_0; char* member_1; void* optval; scalar_t__ freeme; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  sb4 ;
struct TYPE_6__ {int attached; void* last_err; int /*<<< orphan*/  max_char_width; int /*<<< orphan*/  err; int /*<<< orphan*/ * env; void* session; void* svc; void* server; int /*<<< orphan*/  charset; int /*<<< orphan*/  prefetch; } ;
typedef  TYPE_1__ pdo_oci_db_handle ;
struct TYPE_7__ {int alloc_own_columns; int /*<<< orphan*/  native_case; int /*<<< orphan*/ * methods; void* password; int /*<<< orphan*/  is_persistent; void* username; TYPE_1__* driver_data; int /*<<< orphan*/  data_source_len; int /*<<< orphan*/  data_source; } ;
typedef  TYPE_2__ pdo_dbh_t ;
typedef  int /*<<< orphan*/  oratext ;
typedef  int /*<<< orphan*/  dvoid ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCI_ATTR_PASSWORD ; 
 int /*<<< orphan*/  OCI_ATTR_SERVER ; 
 int /*<<< orphan*/  OCI_ATTR_SESSION ; 
 int /*<<< orphan*/  OCI_ATTR_USERNAME ; 
 int /*<<< orphan*/  OCI_CRED_RDBMS ; 
 int /*<<< orphan*/  OCI_DEFAULT ; 
 int /*<<< orphan*/  OCI_HTYPE_ERROR ; 
 int /*<<< orphan*/  OCI_HTYPE_SERVER ; 
 int /*<<< orphan*/  OCI_HTYPE_SESSION ; 
 int /*<<< orphan*/  OCI_HTYPE_SVCCTX ; 
 int /*<<< orphan*/  OCI_NLS_CHARSET_MAXBYTESZ ; 
 scalar_t__ OCI_SUCCESS ; 
 int /*<<< orphan*/  PDO_CASE_UPPER ; 
 int /*<<< orphan*/  PDO_OCI_INIT_MODE ; 
 int /*<<< orphan*/  PDO_OCI_PREFETCH_DEFAULT ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  oci_methods ; 
 int /*<<< orphan*/ * pdo_oci_Env ; 
 TYPE_1__* FUNC11 (int,int,int /*<<< orphan*/ ) ; 
 void* FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pdo_data_src_parser*,int) ; 
 scalar_t__ FUNC14 (void*) ; 

__attribute__((used)) static int FUNC15(pdo_dbh_t *dbh, zval *driver_options) /* {{{ */
{
	pdo_oci_db_handle *H;
	int i, ret = 0;
	struct pdo_data_src_parser vars[] = {
		{ "charset",  NULL,	0 },
		{ "dbname",   "",	0 },
		{ "user",     NULL, 0 },
		{ "password", NULL, 0 }
	};

	FUNC13(dbh->data_source, dbh->data_source_len, vars, 4);

	H = FUNC11(1, sizeof(*H), dbh->is_persistent);
	dbh->driver_data = H;

	H->prefetch = PDO_OCI_PREFETCH_DEFAULT;

	/* allocate an environment */
#if HAVE_OCIENVNLSCREATE
	if (vars[0].optval) {
		H->charset = OCINlsCharSetNameToId(pdo_oci_Env, (const oratext *)vars[0].optval);
		if (!H->charset) {
			oci_init_error("OCINlsCharSetNameToId: unknown character set name");
			goto cleanup;
		} else {
			if (OCIEnvNlsCreate(&H->env, PDO_OCI_INIT_MODE, 0, NULL, NULL, NULL, 0, NULL, H->charset, H->charset) != OCI_SUCCESS) {
				oci_init_error("OCIEnvNlsCreate: Check the character set is valid and that PHP has access to Oracle libraries and NLS data");
				goto cleanup;
			}
		}
	}
#endif
	if (H->env == NULL) {
		/* use the global environment */
		H->env = pdo_oci_Env;
	}

	/* something to hold errors */
	FUNC2(H->env, (dvoid **)&H->err, OCI_HTYPE_ERROR, 0, NULL);

	/* handle for the server */
	FUNC2(H->env, (dvoid **)&H->server, OCI_HTYPE_SERVER, 0, NULL);

	H->last_err = FUNC5(H->server, H->err, (text*)vars[1].optval,
		   	(sb4) FUNC14(vars[1].optval), OCI_DEFAULT);

	if (H->last_err) {
		FUNC8("pdo_oci_handle_factory");
		goto cleanup;
	}

	H->attached = 1;

	/* create a service context */
	H->last_err = FUNC2(H->env, (dvoid**)&H->svc, OCI_HTYPE_SVCCTX, 0, NULL);
	if (H->last_err) {
		FUNC8("OCIHandleAlloc: OCI_HTYPE_SVCCTX");
		goto cleanup;
	}

	H->last_err = FUNC2(H->env, (dvoid**)&H->session, OCI_HTYPE_SESSION, 0, NULL);
	if (H->last_err) {
		FUNC8("OCIHandleAlloc: OCI_HTYPE_SESSION");
		goto cleanup;
	}

	/* set server handle into service handle */
	H->last_err = FUNC0(H->svc, OCI_HTYPE_SVCCTX, H->server, 0, OCI_ATTR_SERVER, H->err);
	if (H->last_err) {
		FUNC8("OCIAttrSet: OCI_ATTR_SERVER");
		goto cleanup;
	}

	/* username */
	if (!dbh->username && vars[2].optval) {
		dbh->username = FUNC12(vars[2].optval, dbh->is_persistent);
	}

	if (dbh->username) {
		H->last_err = FUNC0(H->session, OCI_HTYPE_SESSION,
			   	dbh->username, (ub4) FUNC14(dbh->username),
				OCI_ATTR_USERNAME, H->err);
		if (H->last_err) {
			FUNC8("OCIAttrSet: OCI_ATTR_USERNAME");
			goto cleanup;
		}
	}

	/* password */
	if (!dbh->password && vars[3].optval) {
		dbh->password = FUNC12(vars[3].optval, dbh->is_persistent);
	}

	if (dbh->password) {
		H->last_err = FUNC0(H->session, OCI_HTYPE_SESSION,
			   	dbh->password, (ub4) FUNC14(dbh->password),
				OCI_ATTR_PASSWORD, H->err);
		if (H->last_err) {
			FUNC8("OCIAttrSet: OCI_ATTR_PASSWORD");
			goto cleanup;
		}
	}

	/* Now fire up the session */
	H->last_err = FUNC6(H->svc, H->err, H->session, OCI_CRED_RDBMS, OCI_DEFAULT);
	if (H->last_err) {
		FUNC8("OCISessionBegin");
		goto cleanup;
	}

	/* set the server handle into service handle */
	H->last_err = FUNC0(H->svc, OCI_HTYPE_SVCCTX, H->session, 0, OCI_ATTR_SESSION, H->err);
	if (H->last_err) {
		FUNC8("OCIAttrSet: OCI_ATTR_SESSION");
		goto cleanup;
	}

	/* Get max character width */
 	H->last_err = FUNC4(H->env, H->err, &H->max_char_width, OCI_NLS_CHARSET_MAXBYTESZ);
 	if (H->last_err) {
 		FUNC8("OCINlsNumericInfoGet: OCI_NLS_CHARSET_MAXBYTESZ");
 		goto cleanup;
 	}

	dbh->methods = &oci_methods;
	dbh->alloc_own_columns = 1;
	dbh->native_case = PDO_CASE_UPPER;

	ret = 1;

cleanup:
	for (i = 0; i < sizeof(vars)/sizeof(vars[0]); i++) {
		if (vars[i].freeme) {
			FUNC7(vars[i].optval);
		}
	}

	if (!ret) {
		FUNC9(dbh);
	}

	return ret;
}