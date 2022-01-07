
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct db_stmt_sqlite {int sqlite; } ;
struct db_stmt {int dummy; } ;
struct TYPE_2__ {char* s; int i; } ;
struct db_row {char kind; TYPE_1__ u; } ;


 scalar_t__ SQLITE_ROW ;
 int sqlite3_column_int (int ,int) ;
 scalar_t__ sqlite3_column_text (int ,int) ;
 scalar_t__ sqlite3_step (int ) ;

__attribute__((used)) static bool db_stmt_step_sqlite(const struct db_stmt *stmt, struct db_row *row)
{
    const struct db_stmt_sqlite *stmt_sqlite = (const struct db_stmt_sqlite *)stmt;

    if (sqlite3_step(stmt_sqlite->sqlite) != SQLITE_ROW)
        return 0;

    int column_id = 0;
    for (struct db_row *r = row; r->kind != '\0'; r++, column_id++) {
        if (r->kind == 'i') {
            r->u.i = sqlite3_column_int(stmt_sqlite->sqlite, column_id);
        } else if (r->kind == 's') {
            r->u.s = (char *)sqlite3_column_text(stmt_sqlite->sqlite, column_id);
        } else {
            return 0;
        }
    }

    return 1;
}
