
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int finalize; int step; int bind; } ;
struct db_stmt_mysql {int must_execute_again; int * param_bind; int * result_bind; TYPE_1__ base; int stmt; } ;
struct db_stmt {int dummy; } ;
struct db_mysql {int con; } ;
struct db {int dummy; } ;


 int db_stmt_bind_mysql ;
 int db_stmt_finalize_mysql ;
 int db_stmt_step_mysql ;
 int free (struct db_stmt_mysql*) ;
 struct db_stmt_mysql* malloc (int) ;
 int mysql_stmt_close (int ) ;
 int mysql_stmt_init (int ) ;
 scalar_t__ mysql_stmt_prepare (int ,char const*,size_t const) ;

__attribute__((used)) static struct db_stmt *db_prepare_mysql(const struct db *db, const char *sql,
        const size_t sql_len)
{
    const struct db_mysql *db_mysql = (const struct db_mysql *)db;
    struct db_stmt_mysql *stmt_mysql = malloc(sizeof(*stmt_mysql));

    if (!stmt_mysql)
        return ((void*)0);

    stmt_mysql->stmt = mysql_stmt_init(db_mysql->con);
    if (!stmt_mysql->stmt) {
        free(stmt_mysql);
        return ((void*)0);
    }

    if (mysql_stmt_prepare(stmt_mysql->stmt, sql, sql_len)) {
        mysql_stmt_close(stmt_mysql->stmt);
        free(stmt_mysql);
        return ((void*)0);
    }

    stmt_mysql->base.bind = db_stmt_bind_mysql;
    stmt_mysql->base.step = db_stmt_step_mysql;
    stmt_mysql->base.finalize = db_stmt_finalize_mysql;
    stmt_mysql->result_bind = ((void*)0);
    stmt_mysql->param_bind = ((void*)0);
    stmt_mysql->must_execute_again = 1;

    return (struct db_stmt*)stmt_mysql;
}
