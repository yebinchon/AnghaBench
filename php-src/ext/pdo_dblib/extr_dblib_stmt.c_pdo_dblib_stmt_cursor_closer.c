
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {TYPE_3__* H; } ;
typedef TYPE_2__ pdo_dblib_stmt ;
struct TYPE_7__ {int err; int link; } ;
typedef TYPE_3__ pdo_dblib_db_handle ;


 int dbcancel (int ) ;
 int pdo_dblib_err_dtor (int *) ;

__attribute__((used)) static int pdo_dblib_stmt_cursor_closer(pdo_stmt_t *stmt)
{
 pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
 pdo_dblib_db_handle *H = S->H;


 dbcancel(H->link);

 pdo_dblib_err_dtor(&H->err);

 return 1;
}
