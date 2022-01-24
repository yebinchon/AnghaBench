#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  size_t ub4 ;
typedef  int /*<<< orphan*/  text ;
struct pdo_bound_param_data {int /*<<< orphan*/  param_type; int /*<<< orphan*/  paramno; TYPE_2__* name; int /*<<< orphan*/  max_value_len; TYPE_5__* driver_data; int /*<<< orphan*/  parameter; scalar_t__ is_param; } ;
typedef  int sb4 ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_11__ {int /*<<< orphan*/  database_object_handle; scalar_t__ driver_data; } ;
typedef  TYPE_3__ pdo_stmt_t ;
struct TYPE_12__ {int have_blobs; TYPE_1__* H; int /*<<< orphan*/  err; int /*<<< orphan*/ * stmt; } ;
typedef  TYPE_4__ pdo_oci_stmt ;
struct TYPE_13__ {int indicator; int /*<<< orphan*/ * thing; int /*<<< orphan*/  actual_len; int /*<<< orphan*/  used_for_output; int /*<<< orphan*/ * bind; int /*<<< orphan*/  retcode; int /*<<< orphan*/  oci_type; } ;
typedef  TYPE_5__ pdo_oci_bound_param ;
typedef  enum pdo_param_event { ____Placeholder_pdo_param_event } pdo_param_event ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  Z_STR_P ;
struct TYPE_10__ {int /*<<< orphan*/  len; scalar_t__ val; } ;
struct TYPE_9__ {int /*<<< orphan*/  err; int /*<<< orphan*/  svc; int /*<<< orphan*/ * env; } ;
typedef  int /*<<< orphan*/  OCILobLocator ;

/* Variables and functions */
 int /*<<< orphan*/  IS_NULL ; 
 int /*<<< orphan*/  IS_STRING ; 
 int /*<<< orphan*/  OCIAttrSet ; 
 int /*<<< orphan*/  OCIBindByName ; 
 int /*<<< orphan*/  OCIBindByPos ; 
 int /*<<< orphan*/  OCIBindDynamic ; 
 int /*<<< orphan*/  OCIDescriptorAlloc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,size_t,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCI_ATTR_LOBEMPTY ; 
 int /*<<< orphan*/  OCI_DATA_AT_EXEC ; 
 int /*<<< orphan*/  OCI_DTYPE_LOB ; 
 int /*<<< orphan*/  OCI_LOB_READWRITE ; 
 int /*<<< orphan*/  OCI_ONE_PIECE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  PDO_PARAM_EVT_ALLOC 137 
#define  PDO_PARAM_EVT_EXEC_POST 136 
#define  PDO_PARAM_EVT_EXEC_PRE 135 
#define  PDO_PARAM_EVT_FETCH_POST 134 
#define  PDO_PARAM_EVT_FETCH_PRE 133 
#define  PDO_PARAM_EVT_FREE 132 
#define  PDO_PARAM_EVT_NORMALIZE 131 
#define  PDO_PARAM_LOB 130 
#define  PDO_PARAM_STMT 129 
#define  PDO_PARAM_STR 128 
 int const FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQLCS_IMPLICIT ; 
 int /*<<< orphan*/  SQLT_BLOB ; 
 int /*<<< orphan*/  SQLT_CHR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  oci_bind_input_cb ; 
 int /*<<< orphan*/  oci_bind_output_cb ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC18 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(pdo_stmt_t *stmt, struct pdo_bound_param_data *param, enum pdo_param_event event_type) /* {{{ */
{
	pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;

	/* we're only interested in parameters for prepared SQL right now */
	if (param->is_param) {
		pdo_oci_bound_param *P;
		sb4 value_sz = -1;
		zval *parameter;

		if (FUNC9(param->parameter))
			parameter = FUNC10(param->parameter);
		else
			parameter = &param->parameter;

		P = (pdo_oci_bound_param*)param->driver_data;

		switch (event_type) {
			case PDO_PARAM_EVT_FETCH_PRE:
			case PDO_PARAM_EVT_FETCH_POST:
			case PDO_PARAM_EVT_NORMALIZE:
				/* Do nothing */
				break;

			case PDO_PARAM_EVT_FREE:
				P = param->driver_data;
				if (P && P->thing) {
					FUNC5(S->H->env, S->H->svc, S->H->err, P->thing);
					FUNC0(P->thing, OCI_DTYPE_LOB);
					P->thing = NULL;
					FUNC15(P);
				}
				else if (P) {
					FUNC15(P);
				}
				break;

			case PDO_PARAM_EVT_ALLOC:
				P = (pdo_oci_bound_param*)FUNC14(1, sizeof(pdo_oci_bound_param));
				param->driver_data = P;

				/* figure out what we're doing */
				switch (FUNC6(param->param_type)) {
					case PDO_PARAM_STMT:
						return 0;

					case PDO_PARAM_LOB:
						/* P->thing is now an OCILobLocator * */
						P->oci_type = SQLT_BLOB;
						value_sz = (sb4) sizeof(OCILobLocator*);
						break;

					case PDO_PARAM_STR:
					default:
						P->oci_type = SQLT_CHR;
						value_sz = (sb4) param->max_value_len;
						if (param->max_value_len == 0) {
							value_sz = (sb4) 1332; /* maximum size before value is interpreted as a LONG value */
						}

				}

				if (param->name) {
					FUNC7(OCIBindByName, (S->stmt,
							&P->bind, S->err, (text*)param->name->val,
							(sb4) param->name->len, 0, value_sz, P->oci_type,
							&P->indicator, 0, &P->retcode, 0, 0,
							OCI_DATA_AT_EXEC));
				} else {
					FUNC7(OCIBindByPos, (S->stmt,
							&P->bind, S->err, ((ub4)param->paramno)+1,
							0, value_sz, P->oci_type,
							&P->indicator, 0, &P->retcode, 0, 0,
							OCI_DATA_AT_EXEC));
				}

				FUNC7(OCIBindDynamic, (P->bind,
							S->err,
							param, oci_bind_input_cb,
							param, oci_bind_output_cb));

				return 1;

			case PDO_PARAM_EVT_EXEC_PRE:
				P->indicator = 0;
				P->used_for_output = 0;
				if (FUNC6(param->param_type) == PDO_PARAM_LOB) {
					ub4 empty = 0;
					FUNC7(OCIDescriptorAlloc, (S->H->env, &P->thing, OCI_DTYPE_LOB, 0, NULL));
					FUNC7(OCIAttrSet, (P->thing, OCI_DTYPE_LOB, &empty, 0, OCI_ATTR_LOBEMPTY, S->err));
					S->have_blobs = 1;
				}
				return 1;

			case PDO_PARAM_EVT_EXEC_POST:
				/* fixup stuff set in motion in oci_bind_output_cb */
				if (P->used_for_output) {
					if (P->indicator == -1) {
						/* set up a NULL value */
						if (FUNC13(parameter) == IS_STRING) {
							/* OCI likes to stick non-terminated strings in things */
							*FUNC12(parameter) = '\0';
						}
						FUNC21(parameter);
						FUNC8(parameter);
					} else if (FUNC13(parameter) == IS_STRING) {
						Z_STR_P(parameter) = FUNC20(FUNC12(&parameter), P->actual_len, 1);
					}
				} else if (FUNC6(param->param_type) == PDO_PARAM_LOB && P->thing) {
					php_stream *stm;

					if (FUNC13(parameter) == IS_NULL) {
						/* if the param is NULL, then we assume that they
						 * wanted to bind a lob locator into it from the query
						 * */

						stm = FUNC16(&stmt->database_object_handle, stmt, (OCILobLocator*)P->thing);
						if (stm) {
							FUNC3(S->H->svc, S->err, (OCILobLocator*)P->thing, OCI_LOB_READWRITE);
							FUNC19(stm, parameter);
						}
					} else {
						/* we're a LOB being used for insert; transfer the data now */
						size_t n;
						ub4 amt, offset = 1;
						char *consume;

						FUNC17(stm, parameter);
						if (stm) {
							FUNC3(S->H->svc, S->err, (OCILobLocator*)P->thing, OCI_LOB_READWRITE);
							do {
								char buf[8192];
								n = FUNC18(stm, buf, sizeof(buf));
								if ((int)n <= 0) {
									break;
								}
								consume = buf;
								do {
									amt = (ub4) n;
									FUNC4(S->H->svc, S->err, (OCILobLocator*)P->thing,
											&amt, offset, consume, (ub4) n,
											OCI_ONE_PIECE,
											NULL, NULL, 0, SQLCS_IMPLICIT);
									offset += amt;
									n -= amt;
									consume += amt;
								} while (n);
							} while (1);
							FUNC1(S->H->svc, S->err, (OCILobLocator*)P->thing);
							FUNC2(S->H->svc, S->err, (OCILobLocator*)P->thing, 0);
						} else if (FUNC13(parameter) == IS_STRING) {
							/* stick the string into the LOB */
							consume = FUNC12(parameter);
							n = FUNC11(parameter);
							if (n) {
								FUNC3(S->H->svc, S->err, (OCILobLocator*)P->thing, OCI_LOB_READWRITE);
								while (n) {
									amt = (ub4) n;
									FUNC4(S->H->svc, S->err, (OCILobLocator*)P->thing,
											&amt, offset, consume, (ub4) n,
											OCI_ONE_PIECE,
											NULL, NULL, 0, SQLCS_IMPLICIT);
									consume += amt;
									n -= amt;
								}
								FUNC1(S->H->svc, S->err, (OCILobLocator*)P->thing);
							}
						}
						FUNC5(S->H->env, S->H->svc, S->H->err, P->thing);
						FUNC0(P->thing, OCI_DTYPE_LOB);
						P->thing = NULL;
					}
				}

				return 1;
		}
	}

	return 1;
}