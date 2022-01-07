
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_sqlite {int sqlite; } ;
struct db {int dummy; } ;


 int free (struct db*) ;
 int sqlite3_close (int ) ;

__attribute__((used)) static void db_disconnect_sqlite(struct db *db)
{
    struct db_sqlite *db_sqlite = (struct db_sqlite *)db;

    sqlite3_close(db_sqlite->sqlite);
    free(db);
}
