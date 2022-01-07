
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_19__ {int data; } ;
struct TYPE_18__ {scalar_t__ queryclass; scalar_t__ inCursor; scalar_t__ inStart; int errorMessage; TYPE_1__* result; int asyncStatus; TYPE_7__ workBuffer; } ;
struct TYPE_17__ {int tableid; int columnid; int format; int typid; int typlen; int atttypmod; int name; } ;
struct TYPE_16__ {int numAttributes; int binary; TYPE_2__* attDescs; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGresAttDesc ;
typedef TYPE_3__ PGconn ;


 int MemSet (TYPE_2__*,int ,int) ;
 int PGASYNC_READY ;
 scalar_t__ PGQUERY_DESCRIBE ;
 int PGRES_COMMAND_OK ;
 int PGRES_TUPLES_OK ;
 int PQclear (TYPE_1__*) ;
 TYPE_1__* PQmakeEmptyPGresult (TYPE_3__*,int ) ;
 char* libpq_gettext (char*) ;
 int pqClearAsyncResult (TYPE_3__*) ;
 scalar_t__ pqGetInt (int*,int,TYPE_3__*) ;
 scalar_t__ pqGets (TYPE_7__*,TYPE_3__*) ;
 scalar_t__ pqResultAlloc (TYPE_1__*,int,int) ;
 int pqResultStrdup (TYPE_1__*,int ) ;
 int pqSaveErrorResult (TYPE_3__*) ;
 int printfPQExpBuffer (int *,char*,char const*) ;

__attribute__((used)) static int
getRowDescriptions(PGconn *conn, int msgLength)
{
 PGresult *result;
 int nfields;
 const char *errmsg;
 int i;






 if (conn->queryclass == PGQUERY_DESCRIBE)
 {
  if (conn->result)
   result = conn->result;
  else
   result = PQmakeEmptyPGresult(conn, PGRES_COMMAND_OK);
 }
 else
  result = PQmakeEmptyPGresult(conn, PGRES_TUPLES_OK);
 if (!result)
 {
  errmsg = ((void*)0);
  goto advance_and_error;
 }



 if (pqGetInt(&(result->numAttributes), 2, conn))
 {

  errmsg = libpq_gettext("insufficient data in \"T\" message");
  goto advance_and_error;
 }
 nfields = result->numAttributes;


 if (nfields > 0)
 {
  result->attDescs = (PGresAttDesc *)
   pqResultAlloc(result, nfields * sizeof(PGresAttDesc), 1);
  if (!result->attDescs)
  {
   errmsg = ((void*)0);
   goto advance_and_error;
  }
  MemSet(result->attDescs, 0, nfields * sizeof(PGresAttDesc));
 }


 result->binary = (nfields > 0) ? 1 : 0;


 for (i = 0; i < nfields; i++)
 {
  int tableid;
  int columnid;
  int typid;
  int typlen;
  int atttypmod;
  int format;

  if (pqGets(&conn->workBuffer, conn) ||
   pqGetInt(&tableid, 4, conn) ||
   pqGetInt(&columnid, 2, conn) ||
   pqGetInt(&typid, 4, conn) ||
   pqGetInt(&typlen, 2, conn) ||
   pqGetInt(&atttypmod, 4, conn) ||
   pqGetInt(&format, 2, conn))
  {

   errmsg = libpq_gettext("insufficient data in \"T\" message");
   goto advance_and_error;
  }





  columnid = (int) ((int16) columnid);
  typlen = (int) ((int16) typlen);
  format = (int) ((int16) format);

  result->attDescs[i].name = pqResultStrdup(result,
              conn->workBuffer.data);
  if (!result->attDescs[i].name)
  {
   errmsg = ((void*)0);
   goto advance_and_error;
  }
  result->attDescs[i].tableid = tableid;
  result->attDescs[i].columnid = columnid;
  result->attDescs[i].format = format;
  result->attDescs[i].typid = typid;
  result->attDescs[i].typlen = typlen;
  result->attDescs[i].atttypmod = atttypmod;

  if (format != 1)
   result->binary = 0;
 }


 if (conn->inCursor != conn->inStart + 5 + msgLength)
 {
  errmsg = libpq_gettext("extraneous data in \"T\" message");
  goto advance_and_error;
 }


 conn->result = result;


 conn->inStart = conn->inCursor;





 if (conn->queryclass == PGQUERY_DESCRIBE)
 {
  conn->asyncStatus = PGASYNC_READY;
  return 0;
 }







 return 0;

advance_and_error:

 if (result && result != conn->result)
  PQclear(result);


 conn->inStart += 5 + msgLength;





 pqClearAsyncResult(conn);







 if (!errmsg)
  errmsg = libpq_gettext("out of memory for query result");

 printfPQExpBuffer(&conn->errorMessage, "%s\n", errmsg);
 pqSaveErrorResult(conn);






 return 0;
}
