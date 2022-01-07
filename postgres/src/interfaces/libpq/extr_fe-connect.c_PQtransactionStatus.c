
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; scalar_t__ asyncStatus; int xactStatus; } ;
typedef TYPE_1__ PGconn ;
typedef int PGTransactionStatusType ;


 scalar_t__ CONNECTION_OK ;
 scalar_t__ PGASYNC_IDLE ;
 int PQTRANS_ACTIVE ;
 int PQTRANS_UNKNOWN ;

PGTransactionStatusType
PQtransactionStatus(const PGconn *conn)
{
 if (!conn || conn->status != CONNECTION_OK)
  return PQTRANS_UNKNOWN;
 if (conn->asyncStatus != PGASYNC_IDLE)
  return PQTRANS_ACTIVE;
 return conn->xactStatus;
}
