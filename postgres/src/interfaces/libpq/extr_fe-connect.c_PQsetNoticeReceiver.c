
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* noticeRecArg; int * noticeRec; } ;
struct TYPE_5__ {TYPE_1__ noticeHooks; } ;
typedef int * PQnoticeReceiver ;
typedef TYPE_2__ PGconn ;



PQnoticeReceiver
PQsetNoticeReceiver(PGconn *conn, PQnoticeReceiver proc, void *arg)
{
 PQnoticeReceiver old;

 if (conn == ((void*)0))
  return ((void*)0);

 old = conn->noticeHooks.noticeRec;
 if (proc)
 {
  conn->noticeHooks.noticeRec = proc;
  conn->noticeHooks.noticeRecArg = arg;
 }
 return old;
}
