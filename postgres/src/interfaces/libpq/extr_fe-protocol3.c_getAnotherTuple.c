
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int rowBufLen; scalar_t__ inBuffer; scalar_t__ inCursor; scalar_t__ inStart; int errorMessage; TYPE_2__* rowBuf; TYPE_1__* result; } ;
struct TYPE_12__ {int len; scalar_t__ value; } ;
struct TYPE_11__ {int numAttributes; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGdataValue ;
typedef TYPE_3__ PGconn ;


 char* libpq_gettext (char*) ;
 int pqClearAsyncResult (TYPE_3__*) ;
 scalar_t__ pqGetInt (int*,int,TYPE_3__*) ;
 scalar_t__ pqRowProcessor (TYPE_3__*,char const**) ;
 int pqSaveErrorResult (TYPE_3__*) ;
 scalar_t__ pqSkipnchar (int,TYPE_3__*) ;
 int printfPQExpBuffer (int *,char*,char const*) ;
 scalar_t__ realloc (TYPE_2__*,int) ;

__attribute__((used)) static int
getAnotherTuple(PGconn *conn, int msgLength)
{
 PGresult *result = conn->result;
 int nfields = result->numAttributes;
 const char *errmsg;
 PGdataValue *rowbuf;
 int tupnfields;
 int vlen;
 int i;


 if (pqGetInt(&tupnfields, 2, conn))
 {

  errmsg = libpq_gettext("insufficient data in \"D\" message");
  goto advance_and_error;
 }

 if (tupnfields != nfields)
 {
  errmsg = libpq_gettext("unexpected field count in \"D\" message");
  goto advance_and_error;
 }


 rowbuf = conn->rowBuf;
 if (nfields > conn->rowBufLen)
 {
  rowbuf = (PGdataValue *) realloc(rowbuf,
           nfields * sizeof(PGdataValue));
  if (!rowbuf)
  {
   errmsg = ((void*)0);
   goto advance_and_error;
  }
  conn->rowBuf = rowbuf;
  conn->rowBufLen = nfields;
 }


 for (i = 0; i < nfields; i++)
 {

  if (pqGetInt(&vlen, 4, conn))
  {

   errmsg = libpq_gettext("insufficient data in \"D\" message");
   goto advance_and_error;
  }
  rowbuf[i].len = vlen;






  rowbuf[i].value = conn->inBuffer + conn->inCursor;


  if (vlen > 0)
  {
   if (pqSkipnchar(vlen, conn))
   {

    errmsg = libpq_gettext("insufficient data in \"D\" message");
    goto advance_and_error;
   }
  }
 }


 if (conn->inCursor != conn->inStart + 5 + msgLength)
 {
  errmsg = libpq_gettext("extraneous data in \"D\" message");
  goto advance_and_error;
 }


 conn->inStart = conn->inCursor;


 errmsg = ((void*)0);
 if (pqRowProcessor(conn, &errmsg))
  return 0;

 goto set_error_result;

advance_and_error:

 conn->inStart += 5 + msgLength;

set_error_result:





 pqClearAsyncResult(conn);







 if (!errmsg)
  errmsg = libpq_gettext("out of memory for query result");

 printfPQExpBuffer(&conn->errorMessage, "%s\n", errmsg);
 pqSaveErrorResult(conn);






 return 0;
}
