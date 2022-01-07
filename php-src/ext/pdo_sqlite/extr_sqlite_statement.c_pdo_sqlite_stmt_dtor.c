
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {int * stmt; } ;
typedef TYPE_2__ pdo_sqlite_stmt ;


 int efree (TYPE_2__*) ;
 int sqlite3_finalize (int *) ;

__attribute__((used)) static int pdo_sqlite_stmt_dtor(pdo_stmt_t *stmt)
{
 pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;

 if (S->stmt) {
  sqlite3_finalize(S->stmt);
  S->stmt = ((void*)0);
 }
 efree(S);
 return 1;
}
