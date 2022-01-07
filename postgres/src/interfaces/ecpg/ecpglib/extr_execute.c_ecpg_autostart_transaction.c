
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statement {int * results; int compat; TYPE_1__* connection; int lineno; } ;
struct TYPE_2__ {int connection; int autocommit; } ;


 scalar_t__ PQTRANS_IDLE ;
 int PQclear (int *) ;
 int * PQexec (int ,char*) ;
 scalar_t__ PQtransactionStatus (int ) ;
 int ecpg_check_PQresult (int *,int ,int ,int ) ;
 int ecpg_free_params (struct statement*,int) ;

bool
ecpg_autostart_transaction(struct statement *stmt)
{
 if (PQtransactionStatus(stmt->connection->connection) == PQTRANS_IDLE && !stmt->connection->autocommit)
 {
  stmt->results = PQexec(stmt->connection->connection, "begin transaction");
  if (!ecpg_check_PQresult(stmt->results, stmt->lineno, stmt->connection->connection, stmt->compat))
  {
   ecpg_free_params(stmt, 0);
   return 0;
  }
  PQclear(stmt->results);
  stmt->results = ((void*)0);
 }
 return 1;
}
