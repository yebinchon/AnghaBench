
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int db; int queryFout; } ;
struct TYPE_5__ {char* extra; char* relname; int be_pid; } ;
typedef TYPE_1__ PGnotify ;


 int PQconsumeInput (int ) ;
 int PQfreemem (TYPE_1__*) ;
 TYPE_1__* PQnotifies (int ) ;
 char* _ (char*) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,...) ;
 TYPE_2__ pset ;

__attribute__((used)) static void
PrintNotifications(void)
{
 PGnotify *notify;

 PQconsumeInput(pset.db);
 while ((notify = PQnotifies(pset.db)) != ((void*)0))
 {

  if (notify->extra[0])
   fprintf(pset.queryFout, _("Asynchronous notification \"%s\" with payload \"%s\" received from server process with PID %d.\n"),
     notify->relname, notify->extra, notify->be_pid);
  else
   fprintf(pset.queryFout, _("Asynchronous notification \"%s\" received from server process with PID %d.\n"),
     notify->relname, notify->be_pid);
  fflush(pset.queryFout);
  PQfreemem(notify);
  PQconsumeInput(pset.db);
 }
}
