
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Pfdebug; scalar_t__ inCursor; scalar_t__ inBuffer; scalar_t__ inEnd; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int fprintf (scalar_t__,char*,...) ;
 int fputnbytes (scalar_t__,char*,size_t) ;
 int memcpy (char*,scalar_t__,size_t) ;

int
pqGetnchar(char *s, size_t len, PGconn *conn)
{
 if (len > (size_t) (conn->inEnd - conn->inCursor))
  return EOF;

 memcpy(s, conn->inBuffer + conn->inCursor, len);


 conn->inCursor += len;

 if (conn->Pfdebug)
 {
  fprintf(conn->Pfdebug, "From backend (%lu)> ", (unsigned long) len);
  fputnbytes(conn->Pfdebug, s, len);
  fprintf(conn->Pfdebug, "\n");
 }

 return 0;
}
