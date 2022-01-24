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
typedef  void sqlite3 ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int SQLITE_OPEN_CREATE ; 
 int SQLITE_OPEN_FULLMUTEX ; 
 int SQLITE_OPEN_READWRITE ; 
 int /*<<< orphan*/  FUNC0 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,void**,int,int /*<<< orphan*/ *) ; 

void *FUNC2(const char *db_path) {
  sqlite3 *db = NULL;
  if (FUNC1(db_path, &db, SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE |
                                        SQLITE_OPEN_FULLMUTEX,
                      NULL) == SQLITE_OK) {
    FUNC0(db, "CREATE TABLE IF NOT EXISTS kv(key PRIMARY KEY, val);", 0,
                 0, 0);
  }
  return db;
}