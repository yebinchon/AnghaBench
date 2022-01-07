
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {int err; } ;
typedef TYPE_2__ pdo_dblib_stmt ;


 int efree (TYPE_2__*) ;
 int pdo_dblib_err_dtor (int *) ;

__attribute__((used)) static int pdo_dblib_stmt_dtor(pdo_stmt_t *stmt)
{
 pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;

 pdo_dblib_err_dtor(&S->err);

 efree(S);

 return 1;
}
