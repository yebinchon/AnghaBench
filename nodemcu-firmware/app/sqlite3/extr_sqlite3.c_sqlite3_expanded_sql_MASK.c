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
struct TYPE_5__ {TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 

char *FUNC4(sqlite3_stmt *pStmt){
#ifdef SQLITE_OMIT_TRACE
  return 0;
#else
  char *z = 0;
  const char *zSql = FUNC3(pStmt);
  if( zSql ){
    Vdbe *p = (Vdbe *)pStmt;
    FUNC1(p->db->mutex);
    z = FUNC0(p, zSql);
    FUNC2(p->db->mutex);
  }
  return z;
#endif
}