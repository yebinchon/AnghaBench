
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
struct TYPE_10__ {int * noticeProcArg; int * noticeProc; int * noticeRecArg; int * noticeRec; } ;
struct TYPE_12__ {scalar_t__ nEvents; int events; TYPE_1__ errorMessage; int client_encoding; TYPE_2__ noticeHooks; } ;
struct TYPE_11__ {int resultStatus; char* cmdStatus; scalar_t__ nEvents; char* null_field; int memorySize; int client_encoding; TYPE_2__ noticeHooks; int * events; scalar_t__ spaceLeft; scalar_t__ curOffset; int * curBlock; int * errQuery; int * errFields; int * errMsg; scalar_t__ binary; int * paramDescs; scalar_t__ numParameters; scalar_t__ tupArrSize; int * tuples; int * attDescs; scalar_t__ numAttributes; scalar_t__ ntups; } ;
typedef TYPE_3__ PGresult ;
typedef TYPE_4__ PGconn ;
typedef int ExecStatusType ;
 int PG_SQL_ASCII ;
 int PQclear (TYPE_3__*) ;
 int * dupEvents (int ,scalar_t__,int*) ;
 scalar_t__ malloc (int) ;
 int pqSetResultError (TYPE_3__*,int ) ;

PGresult *
PQmakeEmptyPGresult(PGconn *conn, ExecStatusType status)
{
 PGresult *result;

 result = (PGresult *) malloc(sizeof(PGresult));
 if (!result)
  return ((void*)0);

 result->ntups = 0;
 result->numAttributes = 0;
 result->attDescs = ((void*)0);
 result->tuples = ((void*)0);
 result->tupArrSize = 0;
 result->numParameters = 0;
 result->paramDescs = ((void*)0);
 result->resultStatus = status;
 result->cmdStatus[0] = '\0';
 result->binary = 0;
 result->events = ((void*)0);
 result->nEvents = 0;
 result->errMsg = ((void*)0);
 result->errFields = ((void*)0);
 result->errQuery = ((void*)0);
 result->null_field[0] = '\0';
 result->curBlock = ((void*)0);
 result->curOffset = 0;
 result->spaceLeft = 0;
 result->memorySize = sizeof(PGresult);

 if (conn)
 {

  result->noticeHooks = conn->noticeHooks;
  result->client_encoding = conn->client_encoding;


  switch (status)
  {
   case 130:
   case 134:
   case 128:
   case 131:
   case 132:
   case 133:
   case 129:

    break;
   default:
    pqSetResultError(result, conn->errorMessage.data);
    break;
  }


  if (conn->nEvents > 0)
  {
   result->events = dupEvents(conn->events, conn->nEvents,
            &result->memorySize);
   if (!result->events)
   {
    PQclear(result);
    return ((void*)0);
   }
   result->nEvents = conn->nEvents;
  }
 }
 else
 {

  result->noticeHooks.noticeRec = ((void*)0);
  result->noticeHooks.noticeRecArg = ((void*)0);
  result->noticeHooks.noticeProc = ((void*)0);
  result->noticeHooks.noticeProcArg = ((void*)0);
  result->client_encoding = PG_SQL_ASCII;
 }

 return result;
}
