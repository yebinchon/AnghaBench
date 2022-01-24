#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_3__ {TYPE_2__* db; } ;
typedef  TYPE_1__ Vdbe ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; scalar_t__* aLimit; } ;

/* Variables and functions */
 size_t SQLITE_LIMIT_LENGTH ; 
 int SQLITE_TOOBIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(sqlite3_stmt *pStmt, int i, sqlite3_uint64 n){
  int rc;
  Vdbe *p = (Vdbe *)pStmt;
  FUNC3(p->db->mutex);
  if( n>(u64)p->db->aLimit[SQLITE_LIMIT_LENGTH] ){
    rc = SQLITE_TOOBIG;
  }else{
    FUNC0( (n & 0x7FFFFFFF)==n );
    rc = FUNC2(pStmt, i, n);
  }
  rc = FUNC1(p->db, rc);
  FUNC4(p->db->mutex);
  return rc;
}