
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t inCursor; int inStart; int * inBuffer; int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 int getCopyDataMessage (TYPE_1__*) ;
 int libpq_gettext (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,int *,int) ;
 scalar_t__ pqReadData (TYPE_1__*) ;
 scalar_t__ pqWait (int,int,TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;

int
pqGetCopyData3(PGconn *conn, char **buffer, int async)
{
 int msgLength;

 for (;;)
 {





  msgLength = getCopyDataMessage(conn);
  if (msgLength < 0)
   return msgLength;
  if (msgLength == 0)
  {

   if (async)
    return 0;

   if (pqWait(1, 0, conn) ||
    pqReadData(conn) < 0)
    return -2;
   continue;
  }





  msgLength -= 4;
  if (msgLength > 0)
  {
   *buffer = (char *) malloc(msgLength + 1);
   if (*buffer == ((void*)0))
   {
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("out of memory\n"));
    return -2;
   }
   memcpy(*buffer, &conn->inBuffer[conn->inCursor], msgLength);
   (*buffer)[msgLength] = '\0';


   conn->inStart = conn->inCursor + msgLength;

   return msgLength;
  }


  conn->inStart = conn->inCursor;
 }
}
