
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int errbuf ;
struct TYPE_3__ {int * connection; scalar_t__ connCancel; } ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 scalar_t__ PQTRANS_ACTIVE ;
 int PQcancel (scalar_t__,char*,int) ;
 int PQfinish (int *) ;
 scalar_t__ PQtransactionStatus (int *) ;
 int set_archive_cancel_info (TYPE_1__*,int *) ;

void
DisconnectDatabase(Archive *AHX)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;
 char errbuf[1];

 if (!AH->connection)
  return;

 if (AH->connCancel)
 {





  if (PQtransactionStatus(AH->connection) == PQTRANS_ACTIVE)
   (void) PQcancel(AH->connCancel, errbuf, sizeof(errbuf));




  set_archive_cancel_info(AH, ((void*)0));
 }

 PQfinish(AH->connection);
 AH->connection = ((void*)0);
}
