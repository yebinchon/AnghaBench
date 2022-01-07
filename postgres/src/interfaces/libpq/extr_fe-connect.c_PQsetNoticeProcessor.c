
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* noticeProcArg; int * noticeProc; } ;
struct TYPE_5__ {TYPE_1__ noticeHooks; } ;
typedef int * PQnoticeProcessor ;
typedef TYPE_2__ PGconn ;



PQnoticeProcessor
PQsetNoticeProcessor(PGconn *conn, PQnoticeProcessor proc, void *arg)
{
 PQnoticeProcessor old;

 if (conn == ((void*)0))
  return ((void*)0);

 old = conn->noticeHooks.noticeProc;
 if (proc)
 {
  conn->noticeHooks.noticeProc = proc;
  conn->noticeHooks.noticeProcArg = arg;
 }
 return old;
}
