
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ inCursor; scalar_t__ inEnd; char* inBuffer; scalar_t__ Pfdebug; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int fprintf (scalar_t__,char*,char) ;

int
pqGetc(char *result, PGconn *conn)
{
 if (conn->inCursor >= conn->inEnd)
  return EOF;

 *result = conn->inBuffer[conn->inCursor++];

 if (conn->Pfdebug)
  fprintf(conn->Pfdebug, "From backend> %c\n", *result);

 return 0;
}
