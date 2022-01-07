
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int connection; } ;
typedef int PGTransactionStatusType ;


 int PQTRANS_UNKNOWN ;
 int PQtransactionStatus (int ) ;
 struct connection* ecpg_get_connection (char const*) ;

PGTransactionStatusType
ECPGtransactionStatus(const char *connection_name)
{
 const struct connection *con;

 con = ecpg_get_connection(connection_name);
 if (con == ((void*)0))
 {

  return PQTRANS_UNKNOWN;
 }

 return PQtransactionStatus(con->connection);

}
