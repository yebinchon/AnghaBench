
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct db_stmt_mysql {int must_execute_again; int stmt; TYPE_2__* result_bind; void* param_bind; } ;
struct db_stmt {int dummy; } ;
struct TYPE_5__ {int i; int * s; } ;
struct db_row {char kind; int buffer_length; TYPE_1__ u; } ;
struct TYPE_6__ {int is_null; int buffer_length; int * buffer; int buffer_type; } ;
typedef TYPE_2__ MYSQL_BIND ;


 int MYSQL_TYPE_LONG ;
 int MYSQL_TYPE_STRING ;
 void* calloc (size_t,int) ;
 int free (TYPE_2__*) ;
 scalar_t__ mysql_stmt_bind_result (int ,TYPE_2__*) ;
 scalar_t__ mysql_stmt_execute (int ) ;
 scalar_t__ mysql_stmt_fetch (int ) ;

__attribute__((used)) static bool db_stmt_step_mysql(const struct db_stmt *stmt, struct db_row *row)
{
    struct db_stmt_mysql *stmt_mysql = (struct db_stmt_mysql *)stmt;

    if (stmt_mysql->must_execute_again) {
        stmt_mysql->must_execute_again = 0;
        if (mysql_stmt_execute(stmt_mysql->stmt))
            return 0;
    }

    if (!stmt_mysql->result_bind) {
        size_t n_rows = 0;
        for (struct db_row *r = row; r->kind != '\0'; r++)
            n_rows++;

        if (!n_rows)
            return 0;

        stmt_mysql->result_bind = calloc(n_rows, sizeof(*stmt_mysql->result_bind));
        if (!stmt_mysql->result_bind)
            return 0;

        stmt_mysql->param_bind = calloc(n_rows, sizeof(*stmt_mysql->param_bind));
        if (!stmt_mysql->param_bind) {
            free(stmt_mysql->result_bind);
            return 0;
        }

        MYSQL_BIND *result = stmt_mysql->result_bind;
        for (size_t r = 0; r < n_rows; r++) {
            if (row[r].kind == 's') {
                result[r].buffer_type = MYSQL_TYPE_STRING;
                result[r].buffer = row[r].u.s;
            } else if (row[r].kind == 'i') {
                result[r].buffer_type = MYSQL_TYPE_LONG;
                result[r].buffer = &row[r].u.i;
            } else {
                return 0;
            }

            result[r].is_null = 0;
            result[r].buffer_length = row[r].buffer_length;
        }

        if (mysql_stmt_bind_result(stmt_mysql->stmt, result))
            return 0;
    }

    return mysql_stmt_fetch(stmt_mysql->stmt) == 0;
}
