
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Pfdebug; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int fprintf (scalar_t__,char*) ;
 int fputnbytes (scalar_t__,char const*,size_t) ;
 scalar_t__ pqPutMsgBytes (char const*,size_t,TYPE_1__*) ;

int
pqPutnchar(const char *s, size_t len, PGconn *conn)
{
 if (pqPutMsgBytes(s, len, conn))
  return EOF;

 if (conn->Pfdebug)
 {
  fprintf(conn->Pfdebug, "To backend> ");
  fputnbytes(conn->Pfdebug, s, len);
  fprintf(conn->Pfdebug, "\n");
 }

 return 0;
}
