
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_procpid; scalar_t__ st_userid; char* st_activity_raw; } ;
typedef TYPE_1__ PgBackendStatus ;


 TYPE_1__* BackendStatusArray ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ GetUserId () ;
 int MaxBackends ;
 int pgstat_begin_read_activity (TYPE_1__ volatile*,int) ;
 char const* pgstat_clip_activity (char*) ;
 int pgstat_end_read_activity (TYPE_1__ volatile*,int) ;
 scalar_t__ pgstat_read_activity_complete (int,int) ;
 int superuser () ;

const char *
pgstat_get_backend_current_activity(int pid, bool checkUser)
{
 PgBackendStatus *beentry;
 int i;

 beentry = BackendStatusArray;
 for (i = 1; i <= MaxBackends; i++)
 {
  volatile PgBackendStatus *vbeentry = beentry;
  bool found;

  for (;;)
  {
   int before_changecount;
   int after_changecount;

   pgstat_begin_read_activity(vbeentry, before_changecount);

   found = (vbeentry->st_procpid == pid);

   pgstat_end_read_activity(vbeentry, after_changecount);

   if (pgstat_read_activity_complete(before_changecount,
             after_changecount))
    break;


   CHECK_FOR_INTERRUPTS();
  }

  if (found)
  {

   if (checkUser && !superuser() && beentry->st_userid != GetUserId())
    return "<insufficient privilege>";
   else if (*(beentry->st_activity_raw) == '\0')
    return "<command string not enabled>";
   else
   {

    return pgstat_clip_activity(beentry->st_activity_raw);
   }
  }

  beentry++;
 }


 return "<backend information not available>";
}
