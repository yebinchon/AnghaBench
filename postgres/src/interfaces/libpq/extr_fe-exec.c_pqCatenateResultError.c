
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char const* errMsg; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef TYPE_2__ PGresult ;


 int appendPQExpBufferStr (TYPE_1__*,char const*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int pqSetResultError (TYPE_2__*,int ) ;
 int termPQExpBuffer (TYPE_1__*) ;

void
pqCatenateResultError(PGresult *res, const char *msg)
{
 PQExpBufferData errorBuf;

 if (!res || !msg)
  return;
 initPQExpBuffer(&errorBuf);
 if (res->errMsg)
  appendPQExpBufferStr(&errorBuf, res->errMsg);
 appendPQExpBufferStr(&errorBuf, msg);
 pqSetResultError(res, errorBuf.data);
 termPQExpBuffer(&errorBuf);
}
