#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  errCode; scalar_t__ mallocFailed; int /*<<< orphan*/  pErr; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 int /*<<< orphan*/  SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

const char *FUNC6(sqlite3 *db){
  const char *z;
  if( !db ){
    return FUNC1(SQLITE_NOMEM);
  }
  if( !FUNC2(db) ){
    return FUNC1(SQLITE_MISUSE_BKPT);
  }
  FUNC3(db->mutex);
  if( db->mallocFailed ){
    z = FUNC1(SQLITE_NOMEM);
  }else{
    z = (char*)FUNC5(db->pErr);
    FUNC0( !db->mallocFailed );
    if( z==0 ){
      z = FUNC1(db->errCode);
    }
  }
  FUNC4(db->mutex);
  return z;
}