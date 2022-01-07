
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_mysql {int con; } ;
struct db {int dummy; } ;


 int free (struct db*) ;
 int mysql_close (int ) ;

__attribute__((used)) static void db_disconnect_mysql(struct db *db)
{
    struct db_mysql *db_mysql = (struct db_mysql *)db;

    mysql_close(db_mysql->con);
    free(db);
}
