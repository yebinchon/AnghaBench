
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ inCursor; scalar_t__ inStart; scalar_t__ inEnd; char* inBuffer; int errorMessage; int asyncStatus; } ;
typedef TYPE_1__ PGconn ;


 int PGASYNC_BUSY ;
 int libpq_gettext (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ pqReadData (TYPE_1__*) ;
 scalar_t__ pqWait (int,int,TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
pqGetCopyData2(PGconn *conn, char **buffer, int async)
{
 bool found;
 int msgLength;

 for (;;)
 {



  conn->inCursor = conn->inStart;
  found = 0;
  while (conn->inCursor < conn->inEnd)
  {
   char c = conn->inBuffer[conn->inCursor++];

   if (c == '\n')
   {
    found = 1;
    break;
   }
  }
  if (!found)
   goto nodata;
  msgLength = conn->inCursor - conn->inStart;





  if (msgLength == 3 &&
   strncmp(&conn->inBuffer[conn->inStart], "\\.\n", 3) == 0)
  {
   conn->inStart = conn->inCursor;
   conn->asyncStatus = PGASYNC_BUSY;
   return -1;
  }




  *buffer = (char *) malloc(msgLength + 1);
  if (*buffer == ((void*)0))
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("out of memory\n"));
   return -2;
  }
  memcpy(*buffer, &conn->inBuffer[conn->inStart], msgLength);
  (*buffer)[msgLength] = '\0';


  conn->inStart = conn->inCursor;

  return msgLength;

nodata:

  if (async)
   return 0;

  if (pqWait(1, 0, conn) ||
   pqReadData(conn) < 0)
   return -2;
 }
}
