
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
struct TYPE_8__ {TYPE_1__* notifyTail; TYPE_1__* notifyHead; TYPE_3__ workBuffer; } ;
struct TYPE_7__ {char* relname; char* extra; int be_pid; struct TYPE_7__* next; } ;
typedef TYPE_1__ PGnotify ;
typedef TYPE_2__ PGconn ;


 int EOF ;
 scalar_t__ malloc (int) ;
 scalar_t__ pqGetInt (int*,int,TYPE_2__*) ;
 scalar_t__ pqGets (TYPE_3__*,TYPE_2__*) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int
getNotify(PGconn *conn)
{
 int be_pid;
 int nmlen;
 PGnotify *newNotify;

 if (pqGetInt(&be_pid, 4, conn))
  return EOF;
 if (pqGets(&conn->workBuffer, conn))
  return EOF;






 nmlen = strlen(conn->workBuffer.data);
 newNotify = (PGnotify *) malloc(sizeof(PGnotify) + nmlen + 1);
 if (newNotify)
 {
  newNotify->relname = (char *) newNotify + sizeof(PGnotify);
  strcpy(newNotify->relname, conn->workBuffer.data);

  newNotify->extra = newNotify->relname + nmlen;
  newNotify->be_pid = be_pid;
  newNotify->next = ((void*)0);
  if (conn->notifyTail)
   conn->notifyTail->next = newNotify;
  else
   conn->notifyHead = newNotify;
  conn->notifyTail = newNotify;
 }

 return 0;
}
