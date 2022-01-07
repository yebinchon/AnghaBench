
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* xactStatus; } ;
typedef TYPE_1__ PGconn ;


 void* PQTRANS_IDLE ;
 void* PQTRANS_INERROR ;
 void* PQTRANS_INTRANS ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
checkXactStatus(PGconn *conn, const char *cmdTag)
{
 if (strcmp(cmdTag, "BEGIN") == 0)
  conn->xactStatus = PQTRANS_INTRANS;
 else if (strcmp(cmdTag, "COMMIT") == 0)
  conn->xactStatus = PQTRANS_IDLE;
 else if (strcmp(cmdTag, "ROLLBACK") == 0)
  conn->xactStatus = PQTRANS_IDLE;
 else if (strcmp(cmdTag, "START TRANSACTION") == 0)
  conn->xactStatus = PQTRANS_INTRANS;






 else if (strcmp(cmdTag, "*ABORT STATE*") == 0)
  conn->xactStatus = PQTRANS_INERROR;
}
