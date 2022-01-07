
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_17__ {int data; } ;
struct TYPE_16__ {TYPE_1__* result; int asyncStatus; int errorMessage; int inEnd; int inStart; int inCursor; TYPE_6__ workBuffer; } ;
struct TYPE_15__ {int typid; int typlen; int atttypmod; scalar_t__ format; scalar_t__ columnid; scalar_t__ tableid; int name; } ;
struct TYPE_14__ {int numAttributes; TYPE_2__* attDescs; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGresAttDesc ;
typedef TYPE_3__ PGconn ;


 int EOF ;
 int MemSet (TYPE_2__*,int ,int) ;
 int PGASYNC_READY ;
 int PGRES_FATAL_ERROR ;
 int PGRES_TUPLES_OK ;
 int PQclear (TYPE_1__*) ;
 void* PQmakeEmptyPGresult (TYPE_3__*,int ) ;
 char* libpq_gettext (char*) ;
 int pqClearAsyncResult (TYPE_3__*) ;
 scalar_t__ pqGetInt (int*,int,TYPE_3__*) ;
 scalar_t__ pqGets (TYPE_6__*,TYPE_3__*) ;
 scalar_t__ pqResultAlloc (TYPE_1__*,int,int) ;
 int pqResultStrdup (TYPE_1__*,int ) ;
 int printfPQExpBuffer (int *,char*,char const*) ;

__attribute__((used)) static int
getRowDescriptions(PGconn *conn)
{
 PGresult *result;
 int nfields;
 const char *errmsg;
 int i;

 result = PQmakeEmptyPGresult(conn, PGRES_TUPLES_OK);
 if (!result)
 {
  errmsg = ((void*)0);
  goto advance_and_error;
 }



 if (pqGetInt(&(result->numAttributes), 2, conn))
  goto EOFexit;
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


 for (i = 0; i < nfields; i++)
 {
  int typid;
  int typlen;
  int atttypmod;

  if (pqGets(&conn->workBuffer, conn) ||
   pqGetInt(&typid, 4, conn) ||
   pqGetInt(&typlen, 2, conn) ||
   pqGetInt(&atttypmod, 4, conn))
   goto EOFexit;





  typlen = (int) ((int16) typlen);

  result->attDescs[i].name = pqResultStrdup(result,
              conn->workBuffer.data);
  if (!result->attDescs[i].name)
  {
   errmsg = ((void*)0);
   goto advance_and_error;
  }
  result->attDescs[i].tableid = 0;
  result->attDescs[i].columnid = 0;
  result->attDescs[i].format = 0;
  result->attDescs[i].typid = typid;
  result->attDescs[i].typlen = typlen;
  result->attDescs[i].atttypmod = atttypmod;
 }


 conn->result = result;


 conn->inStart = conn->inCursor;







 return 0;

advance_and_error:






 conn->inStart = conn->inEnd;





 pqClearAsyncResult(conn);







 if (!errmsg)
  errmsg = libpq_gettext("out of memory for query result");

 printfPQExpBuffer(&conn->errorMessage, "%s\n", errmsg);





 conn->result = PQmakeEmptyPGresult(conn, PGRES_FATAL_ERROR);
 conn->asyncStatus = PGASYNC_READY;

EOFexit:
 if (result && result != conn->result)
  PQclear(result);
 return EOF;
}
