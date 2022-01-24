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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {TYPE_1__* db; int /*<<< orphan*/ * aVar; } ;
typedef  TYPE_2__ Vdbe ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,char const*,void (*) (void*)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int) ; 

int FUNC3(
  sqlite3_stmt *pStmt,
  int i,
  void *pPtr,
  const char *zPTtype,
  void (*xDestructor)(void*)
){
  int rc;
  Vdbe *p = (Vdbe*)pStmt;
  rc = FUNC2(p, i);
  if( rc==SQLITE_OK ){
    FUNC0(&p->aVar[i-1], pPtr, zPTtype, xDestructor);
    FUNC1(p->db->mutex);
  }else if( xDestructor ){
    xDestructor(pPtr);
  }
  return rc;
}