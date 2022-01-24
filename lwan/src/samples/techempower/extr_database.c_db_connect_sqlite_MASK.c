#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  prepare; int /*<<< orphan*/  disconnect; } ;
struct db_sqlite {TYPE_1__ base; int /*<<< orphan*/  sqlite; } ;
struct db {int dummy; } ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLITE_OPEN_READONLY ; 
 int /*<<< orphan*/  db_disconnect_sqlite ; 
 int /*<<< orphan*/  db_prepare_sqlite ; 
 int /*<<< orphan*/  FUNC0 (struct db_sqlite*) ; 
 struct db_sqlite* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

struct db *FUNC4(const char *path, bool read_only, const char *pragmas[])
{
    struct db_sqlite *db_sqlite = FUNC1(sizeof(*db_sqlite));

    if (!db_sqlite)
        return NULL;

    int flags = read_only ? SQLITE_OPEN_READONLY : 0;
    int ret = FUNC3(path, &db_sqlite->sqlite, flags, NULL);
    if (ret != SQLITE_OK) {
        FUNC0(db_sqlite);
        return NULL;
    }

    if (pragmas) {
        for (size_t p = 0; pragmas[p]; p++)
            FUNC2(db_sqlite->sqlite, pragmas[p], NULL, NULL, NULL);
    }

    db_sqlite->base.disconnect = db_disconnect_sqlite;
    db_sqlite->base.prepare = db_prepare_sqlite;

    return (struct db *)db_sqlite;
}