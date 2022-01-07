
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int params; int query; } ;
typedef int Portal ;
typedef int PLpgSQL_stmt_forq ;
typedef TYPE_1__ PLpgSQL_stmt_dynfors ;
typedef int PLpgSQL_execstate ;


 int SPI_cursor_close (int ) ;
 int exec_dynquery_with_params (int *,int ,int ,int *,int ) ;
 int exec_for_query (int *,int *,int ,int) ;

__attribute__((used)) static int
exec_stmt_dynfors(PLpgSQL_execstate *estate, PLpgSQL_stmt_dynfors *stmt)
{
 Portal portal;
 int rc;

 portal = exec_dynquery_with_params(estate, stmt->query, stmt->params,
            ((void*)0), 0);




 rc = exec_for_query(estate, (PLpgSQL_stmt_forq *) stmt, portal, 1);




 SPI_cursor_close(portal);

 return rc;
}
