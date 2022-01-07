
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xactStatus; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int PQTRANS_IDLE ;
 int PQTRANS_INERROR ;
 int PQTRANS_INTRANS ;
 int PQTRANS_UNKNOWN ;
 scalar_t__ pqGetc (char*,TYPE_1__*) ;

__attribute__((used)) static int
getReadyForQuery(PGconn *conn)
{
 char xact_status;

 if (pqGetc(&xact_status, conn))
  return EOF;
 switch (xact_status)
 {
  case 'I':
   conn->xactStatus = PQTRANS_IDLE;
   break;
  case 'T':
   conn->xactStatus = PQTRANS_INTRANS;
   break;
  case 'E':
   conn->xactStatus = PQTRANS_INERROR;
   break;
  default:
   conn->xactStatus = PQTRANS_UNKNOWN;
   break;
 }

 return 0;
}
