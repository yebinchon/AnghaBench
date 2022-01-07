
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_stmt_sqlite {int sqlite; } ;
struct db_stmt {int dummy; } ;


 int free (struct db_stmt_sqlite*) ;
 int sqlite3_finalize (int ) ;

__attribute__((used)) static void db_stmt_finalize_sqlite(struct db_stmt *stmt)
{
    struct db_stmt_sqlite *stmt_sqlite = (struct db_stmt_sqlite *)stmt;

    sqlite3_finalize(stmt_sqlite->sqlite);
    free(stmt_sqlite);
}
