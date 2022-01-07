
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * notifyTail; TYPE_1__* notifyHead; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ PGnotify ;
typedef TYPE_2__ PGconn ;


 int parseInput (TYPE_2__*) ;

PGnotify *
PQnotifies(PGconn *conn)
{
 PGnotify *event;

 if (!conn)
  return ((void*)0);


 parseInput(conn);

 event = conn->notifyHead;
 if (event)
 {
  conn->notifyHead = event->next;
  if (!conn->notifyHead)
   conn->notifyTail = ((void*)0);
  event->next = ((void*)0);
 }
 return event;
}
