
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* inBuffer; int inCursor; int inEnd; scalar_t__ Pfdebug; } ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef TYPE_2__ PGconn ;


 int EOF ;
 int appendBinaryPQExpBuffer (TYPE_1__*,char*,int) ;
 int fprintf (scalar_t__,char*,char*) ;
 int resetPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static int
pqGets_internal(PQExpBuffer buf, PGconn *conn, bool resetbuffer)
{

 char *inBuffer = conn->inBuffer;
 int inCursor = conn->inCursor;
 int inEnd = conn->inEnd;
 int slen;

 while (inCursor < inEnd && inBuffer[inCursor])
  inCursor++;

 if (inCursor >= inEnd)
  return EOF;

 slen = inCursor - conn->inCursor;

 if (resetbuffer)
  resetPQExpBuffer(buf);

 appendBinaryPQExpBuffer(buf, inBuffer + conn->inCursor, slen);

 conn->inCursor = ++inCursor;

 if (conn->Pfdebug)
  fprintf(conn->Pfdebug, "From backend> \"%s\"\n",
    buf->data);

 return 0;
}
