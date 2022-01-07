
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdo_dbh_t ;


 int pdo_dblib_transaction_cmd (char*,int *) ;

__attribute__((used)) static int dblib_handle_begin(pdo_dbh_t *dbh)
{
 return pdo_dblib_transaction_cmd("BEGIN TRANSACTION", dbh);
}
