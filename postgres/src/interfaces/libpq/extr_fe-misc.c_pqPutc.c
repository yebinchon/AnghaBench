
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Pfdebug; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int fprintf (scalar_t__,char*,char) ;
 scalar_t__ pqPutMsgBytes (char*,int,TYPE_1__*) ;

int
pqPutc(char c, PGconn *conn)
{
 if (pqPutMsgBytes(&c, 1, conn))
  return EOF;

 if (conn->Pfdebug)
  fprintf(conn->Pfdebug, "To backend> %c\n", c);

 return 0;
}
