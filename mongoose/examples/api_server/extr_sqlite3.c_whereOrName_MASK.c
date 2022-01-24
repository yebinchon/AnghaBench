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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 

__attribute__((used)) static char *FUNC2(sqlite3 *db, char *zWhere, char *zConstant){
  char *zNew;
  if( !zWhere ){
    zNew = FUNC1(db, "name=%Q", zConstant);
  }else{
    zNew = FUNC1(db, "%s OR name=%Q", zWhere, zConstant);
    FUNC0(db, zWhere);
  }
  return zNew;
}