
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_stmt {int (* step ) (struct db_stmt const*,struct db_row*) ;} ;
struct db_row {int dummy; } ;


 int stub1 (struct db_stmt const*,struct db_row*) ;

inline bool db_stmt_step(const struct db_stmt *stmt, struct db_row *row)
{
    return stmt->step(stmt, row);
}
