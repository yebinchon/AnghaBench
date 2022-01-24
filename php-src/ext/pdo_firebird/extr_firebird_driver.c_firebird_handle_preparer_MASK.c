#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  result ;
struct TYPE_14__ {int column_count; int /*<<< orphan*/  supports_placeholders; int /*<<< orphan*/ * methods; TYPE_2__* driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_18__ {int sqln; void* version; } ;
struct TYPE_15__ {int sqln; int sqld; char statement_type; struct TYPE_15__* in_sqlda; void* version; TYPE_7__ out_sqlda; int /*<<< orphan*/ * named_params; void* fetch_buf; int /*<<< orphan*/  stmt; TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_firebird_stmt ;
struct TYPE_16__ {int /*<<< orphan*/  isc_status; } ;
typedef  TYPE_3__ pdo_firebird_db_handle ;
struct TYPE_17__ {scalar_t__ driver_data; } ;
typedef  TYPE_4__ pdo_dbh_t ;
typedef  int /*<<< orphan*/  isc_stmt_handle ;
typedef  int /*<<< orphan*/  info ;
typedef  TYPE_2__ XSQLDA ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* PDO_FB_SQLDA_VERSION ; 
 int /*<<< orphan*/  PDO_FIREBIRD_HANDLE_INITIALIZER ; 
 int /*<<< orphan*/  PDO_PLACEHOLDER_POSITIONAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char const*,size_t,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  firebird_stmt_methods ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,TYPE_7__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char*) ; 
#define  isc_info_sql_stmt_type 128 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(pdo_dbh_t *dbh, const char *sql, size_t sql_len, /* {{{ */
	pdo_stmt_t *stmt, zval *driver_options)
{
	pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;
	pdo_firebird_stmt *S = NULL;
	HashTable *np;

	do {
		isc_stmt_handle s = PDO_FIREBIRD_HANDLE_INITIALIZER;
		XSQLDA num_sqlda;
		static char const info[] = { isc_info_sql_stmt_type };
		char result[8];

		num_sqlda.version = PDO_FB_SQLDA_VERSION;
		num_sqlda.sqln = 1;

		FUNC0(np);
		FUNC12(np, 8, NULL, NULL, 0);

		/* allocate and prepare statement */
		if (!FUNC7(dbh, sql, sql_len, &num_sqlda, &s, np)) {
			break;
		}

		/* allocate a statement handle struct of the right size (struct out_sqlda is inlined) */
		S = FUNC5(1, sizeof(*S)-sizeof(XSQLDA) + FUNC3(num_sqlda.sqld));
		S->H = H;
		S->stmt = s;
		S->fetch_buf = FUNC5(1,sizeof(char*) * num_sqlda.sqld);
		S->out_sqlda.version = PDO_FB_SQLDA_VERSION;
		S->out_sqlda.sqln = stmt->column_count = num_sqlda.sqld;
		S->named_params = np;

		/* determine the statement type */
		if (FUNC10(H->isc_status, &s, sizeof(info), FUNC4(info), sizeof(result),
				result)) {
			break;
		}
		S->statement_type = result[3];

		/* fill the output sqlda with information about the prepared query */
		if (FUNC8(H->isc_status, &s, PDO_FB_SQLDA_VERSION, &S->out_sqlda)) {
			FUNC2(dbh);
			break;
		}

		/* allocate the input descriptors */
		if (FUNC9(H->isc_status, &s, PDO_FB_SQLDA_VERSION, &num_sqlda)) {
			break;
		}

		if (num_sqlda.sqld) {
			S->in_sqlda = FUNC5(1,FUNC3(num_sqlda.sqld));
			S->in_sqlda->version = PDO_FB_SQLDA_VERSION;
			S->in_sqlda->sqln = num_sqlda.sqld;

			if (FUNC9(H->isc_status, &s, PDO_FB_SQLDA_VERSION, S->in_sqlda)) {
				break;
			}
		}

		stmt->driver_data = S;
		stmt->methods = &firebird_stmt_methods;
		stmt->supports_placeholders = PDO_PLACEHOLDER_POSITIONAL;

		return 1;

	} while (0);

	FUNC2(dbh);

	FUNC11(np);
	FUNC1(np);

	if (S) {
		if (S->in_sqlda) {
			FUNC6(S->in_sqlda);
		}
		FUNC6(S);
	}

	return 0;
}