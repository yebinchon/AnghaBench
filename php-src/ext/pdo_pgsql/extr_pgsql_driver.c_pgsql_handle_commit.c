
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int in_txn; } ;
typedef TYPE_1__ pdo_dbh_t ;


 int pdo_pgsql_transaction_cmd (char*,TYPE_1__*) ;
 int pgsql_handle_in_transaction (TYPE_1__*) ;

__attribute__((used)) static int pgsql_handle_commit(pdo_dbh_t *dbh)
{
 int ret = pdo_pgsql_transaction_cmd("COMMIT", dbh);



 if (!ret) {
  dbh->in_txn = pgsql_handle_in_transaction(dbh);
 }

 return ret;
}
