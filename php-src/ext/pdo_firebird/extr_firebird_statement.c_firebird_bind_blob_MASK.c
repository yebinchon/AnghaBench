#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_ulong ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_firebird_stmt ;
struct TYPE_8__ {int /*<<< orphan*/  isc_status; int /*<<< orphan*/  tr; int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ pdo_firebird_db_handle ;
typedef  int /*<<< orphan*/  isc_blob_handle ;
typedef  int /*<<< orphan*/  ISC_QUAD ;

/* Variables and functions */
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  PDO_FIREBIRD_HANDLE_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ USHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(pdo_stmt_t *stmt, ISC_QUAD *blob_id, zval *param)
{
	pdo_firebird_stmt *S = (pdo_firebird_stmt*)stmt->driver_data;
	pdo_firebird_db_handle *H = S->H;
	isc_blob_handle h = PDO_FIREBIRD_HANDLE_INITIALIZER;
	zval data;
	zend_ulong put_cnt = 0, rem_cnt;
	unsigned short chunk_size;
	int result = 1;

	if (FUNC7(H->isc_status, &H->db, &H->tr, &h, blob_id)) {
		FUNC0(stmt);
		return 0;
	}

	if (FUNC5(param) != IS_STRING) {
		FUNC2(&data, FUNC9(param));
	} else {
		FUNC1(&data, param);
	}

	for (rem_cnt = FUNC3(data); rem_cnt > 0; rem_cnt -= chunk_size) {
		chunk_size = rem_cnt > USHRT_MAX ? USHRT_MAX : (unsigned short)rem_cnt;
		if (FUNC8(H->isc_status, &h, chunk_size, &FUNC4(data)[put_cnt])) {
			FUNC0(stmt);
			result = 0;
			break;
		}
		put_cnt += chunk_size;
	}

	if (FUNC5(param) != IS_STRING) {
		FUNC10(&data);
	}

	if (FUNC6(H->isc_status, &h)) {
		FUNC0(stmt);
		return 0;
	}
	return result;
}