#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC2(sqlite3 *db, Btree *p){
  if( FUNC0(p) ){
    FUNC1(db, SQLITE_ERROR, "destination database is in use");
    return SQLITE_ERROR;
  }
  return SQLITE_OK;
}