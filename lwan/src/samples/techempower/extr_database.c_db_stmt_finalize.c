
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_stmt {int (* finalize ) (struct db_stmt*) ;} ;


 int stub1 (struct db_stmt*) ;

inline void db_stmt_finalize(struct db_stmt *stmt)
{
    stmt->finalize(stmt);
}
