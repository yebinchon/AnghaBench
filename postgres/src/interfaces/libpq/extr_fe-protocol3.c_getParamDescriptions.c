
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ inCursor; scalar_t__ inStart; int errorMessage; TYPE_1__* result; } ;
struct TYPE_14__ {int typid; } ;
struct TYPE_13__ {int numParameters; TYPE_2__* paramDescs; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGresParamDesc ;
typedef TYPE_3__ PGconn ;


 int EOF ;
 int MemSet (TYPE_2__*,int ,int) ;
 int PGRES_COMMAND_OK ;
 int PQclear (TYPE_1__*) ;
 TYPE_1__* PQmakeEmptyPGresult (TYPE_3__*,int ) ;
 char* libpq_gettext (char*) ;
 int pqClearAsyncResult (TYPE_3__*) ;
 scalar_t__ pqGetInt (int*,int,TYPE_3__*) ;
 scalar_t__ pqResultAlloc (TYPE_1__*,int,int) ;
 int pqSaveErrorResult (TYPE_3__*) ;
 int printfPQExpBuffer (int *,char*,char const*) ;

__attribute__((used)) static int
getParamDescriptions(PGconn *conn, int msgLength)
{
 PGresult *result;
 const char *errmsg = ((void*)0);
 int nparams;
 int i;

 result = PQmakeEmptyPGresult(conn, PGRES_COMMAND_OK);
 if (!result)
  goto advance_and_error;



 if (pqGetInt(&(result->numParameters), 2, conn))
  goto not_enough_data;
 nparams = result->numParameters;


 if (nparams > 0)
 {
  result->paramDescs = (PGresParamDesc *)
   pqResultAlloc(result, nparams * sizeof(PGresParamDesc), 1);
  if (!result->paramDescs)
   goto advance_and_error;
  MemSet(result->paramDescs, 0, nparams * sizeof(PGresParamDesc));
 }


 for (i = 0; i < nparams; i++)
 {
  int typid;

  if (pqGetInt(&typid, 4, conn))
   goto not_enough_data;
  result->paramDescs[i].typid = typid;
 }


 if (conn->inCursor != conn->inStart + 5 + msgLength)
 {
  errmsg = libpq_gettext("extraneous data in \"t\" message");
  goto advance_and_error;
 }


 conn->result = result;


 conn->inStart = conn->inCursor;

 return 0;

not_enough_data:
 PQclear(result);
 return EOF;

advance_and_error:

 if (result && result != conn->result)
  PQclear(result);


 conn->inStart += 5 + msgLength;





 pqClearAsyncResult(conn);







 if (!errmsg)
  errmsg = libpq_gettext("out of memory");
 printfPQExpBuffer(&conn->errorMessage, "%s\n", errmsg);
 pqSaveErrorResult(conn);






 return 0;
}
