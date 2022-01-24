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
struct db_stmt_sqlite {int /*<<< orphan*/  sqlite; } ;
struct db_stmt {int dummy; } ;
struct TYPE_2__ {char* s; int /*<<< orphan*/  i; } ;
struct db_row {char kind; TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct db_stmt *stmt, struct db_row *row)
{
    const struct db_stmt_sqlite *stmt_sqlite = (const struct db_stmt_sqlite *)stmt;

    if (FUNC2(stmt_sqlite->sqlite) != SQLITE_ROW)
        return false;

    int column_id = 0;
    for (struct db_row *r = row; r->kind != '\0'; r++, column_id++) {
        if (r->kind == 'i') {
            r->u.i = FUNC0(stmt_sqlite->sqlite, column_id);
        } else if (r->kind == 's') {
            r->u.s = (char *)FUNC1(stmt_sqlite->sqlite, column_id);
        } else {
            return false;
        }
    }

    return true;
}