
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int finalize; int step; int bind; } ;
struct db_stmt_sqlite {TYPE_1__ base; int sqlite; } ;
struct db_stmt {int dummy; } ;
struct db_sqlite {int sqlite; } ;
struct db {int dummy; } ;


 int SQLITE_OK ;
 int db_stmt_bind_sqlite ;
 int db_stmt_finalize_sqlite ;
 int db_stmt_step_sqlite ;
 int free (struct db_stmt_sqlite*) ;
 struct db_stmt_sqlite* malloc (int) ;
 int sqlite3_prepare (int ,char const*,int,int *,int *) ;

__attribute__((used)) static struct db_stmt *db_prepare_sqlite(const struct db *db, const char *sql,
        const size_t sql_len)
{
    const struct db_sqlite *db_sqlite = (const struct db_sqlite *)db;
    struct db_stmt_sqlite *stmt_sqlite = malloc(sizeof(*stmt_sqlite));

    if (!stmt_sqlite)
        return ((void*)0);

    int ret = sqlite3_prepare(db_sqlite->sqlite, sql, (int)sql_len, &stmt_sqlite->sqlite, ((void*)0));
    if (ret != SQLITE_OK) {
        free(stmt_sqlite);
        return ((void*)0);
    }

    stmt_sqlite->base.bind = db_stmt_bind_sqlite;
    stmt_sqlite->base.step = db_stmt_step_sqlite;
    stmt_sqlite->base.finalize = db_stmt_finalize_sqlite;

    return (struct db_stmt *)stmt_sqlite;
}
