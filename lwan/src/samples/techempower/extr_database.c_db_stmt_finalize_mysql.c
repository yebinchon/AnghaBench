
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_stmt_mysql {struct db_stmt_mysql* param_bind; struct db_stmt_mysql* result_bind; int stmt; } ;
struct db_stmt {int dummy; } ;


 int free (struct db_stmt_mysql*) ;
 int mysql_stmt_close (int ) ;

__attribute__((used)) static void db_stmt_finalize_mysql(struct db_stmt *stmt)
{
    struct db_stmt_mysql *stmt_mysql = (struct db_stmt_mysql *)stmt;

    mysql_stmt_close(stmt_mysql->stmt);
    free(stmt_mysql->result_bind);
    free(stmt_mysql->param_bind);
    free(stmt_mysql);
}
