
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int query; } ;
typedef int Portal ;
typedef TYPE_1__ PLpgSQL_stmt_fors ;
typedef int PLpgSQL_stmt_forq ;
typedef int PLpgSQL_execstate ;


 int SPI_cursor_close (int ) ;
 int exec_for_query (int *,int *,int ,int) ;
 int exec_run_select (int *,int ,int ,int *) ;

__attribute__((used)) static int
exec_stmt_fors(PLpgSQL_execstate *estate, PLpgSQL_stmt_fors *stmt)
{
 Portal portal;
 int rc;




 exec_run_select(estate, stmt->query, 0, &portal);




 rc = exec_for_query(estate, (PLpgSQL_stmt_forq *) stmt, portal, 1);




 SPI_cursor_close(portal);

 return rc;
}
