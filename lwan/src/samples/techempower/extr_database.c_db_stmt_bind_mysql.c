
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct db_stmt_mysql {int must_execute_again; TYPE_2__* param_bind; int stmt; } ;
struct db_stmt {int dummy; } ;
struct TYPE_5__ {int i; int * s; } ;
struct db_row {char kind; TYPE_1__ u; } ;
struct TYPE_6__ {int is_null; scalar_t__ length; int * buffer; int buffer_type; } ;
typedef TYPE_2__ MYSQL_BIND ;


 int MYSQL_TYPE_LONG ;
 int MYSQL_TYPE_STRING ;
 TYPE_2__* calloc (size_t,int) ;
 int mysql_stmt_bind_param (int ,TYPE_2__*) ;
 int mysql_stmt_reset (int ) ;

__attribute__((used)) static bool db_stmt_bind_mysql(const struct db_stmt *stmt,
        struct db_row *rows, size_t n_rows)
{
    struct db_stmt_mysql *stmt_mysql = (struct db_stmt_mysql *)stmt;

    stmt_mysql->must_execute_again = 1;

    if (!stmt_mysql->param_bind) {
        stmt_mysql->param_bind = calloc(n_rows, sizeof(*stmt_mysql->param_bind));
        if (!stmt_mysql->param_bind)
            return 0;
    } else {
        mysql_stmt_reset(stmt_mysql->stmt);
    }

    for (size_t row = 0; row < n_rows; row++) {
        if (rows[row].kind == '\0') break;

        MYSQL_BIND *param = &stmt_mysql->param_bind[row];
        if (rows[row].kind == 's') {
            param->buffer_type = MYSQL_TYPE_STRING;
            param->buffer = rows[row].u.s;
        } else if (rows[row].kind == 'i') {
            param->buffer_type = MYSQL_TYPE_LONG;
            param->buffer = &rows[row].u.i;
        }
        param->is_null = 0;
        param->length = 0;
    }

    return !mysql_stmt_bind_param(stmt_mysql->stmt, stmt_mysql->param_bind);
}
