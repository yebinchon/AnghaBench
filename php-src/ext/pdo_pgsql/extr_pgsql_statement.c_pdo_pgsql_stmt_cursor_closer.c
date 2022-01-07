
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int * cols; } ;
typedef TYPE_2__ pdo_pgsql_stmt ;


 int efree (int *) ;

__attribute__((used)) static int pdo_pgsql_stmt_cursor_closer(pdo_stmt_t *stmt)
{
 pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;

 if (S->cols != ((void*)0)){
  efree(S->cols);
  S->cols = ((void*)0);
 }
 return 1;
}
