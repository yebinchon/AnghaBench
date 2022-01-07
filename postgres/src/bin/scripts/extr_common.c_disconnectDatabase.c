
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;
typedef int PGconn ;
typedef int PGcancel ;


 int Assert (int ) ;
 scalar_t__ PQTRANS_ACTIVE ;
 int PQcancel (int *,char*,int) ;
 int PQfinish (int *) ;
 int PQfreeCancel (int *) ;
 int * PQgetCancel (int *) ;
 scalar_t__ PQtransactionStatus (int *) ;

void
disconnectDatabase(PGconn *conn)
{
 char errbuf[256];

 Assert(conn != ((void*)0));

 if (PQtransactionStatus(conn) == PQTRANS_ACTIVE)
 {
  PGcancel *cancel;

  if ((cancel = PQgetCancel(conn)))
  {
   (void) PQcancel(cancel, errbuf, sizeof(errbuf));
   PQfreeCancel(cancel);
  }
 }

 PQfinish(conn);
}
