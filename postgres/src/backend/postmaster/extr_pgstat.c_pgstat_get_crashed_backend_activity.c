
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_procpid; char* st_activity_raw; } ;
typedef TYPE_1__ PgBackendStatus ;


 char const* BackendActivityBuffer ;
 int BackendActivityBufferSize ;
 TYPE_1__* BackendStatusArray ;
 int MaxBackends ;
 int Min (int,char const*) ;
 int ascii_safe_strlcpy (char*,char const*,int ) ;
 char const* pgstat_track_activity_query_size ;

const char *
pgstat_get_crashed_backend_activity(int pid, char *buffer, int buflen)
{
 volatile PgBackendStatus *beentry;
 int i;

 beentry = BackendStatusArray;





 if (beentry == ((void*)0) || BackendActivityBuffer == ((void*)0))
  return ((void*)0);

 for (i = 1; i <= MaxBackends; i++)
 {
  if (beentry->st_procpid == pid)
  {

   const char *activity = beentry->st_activity_raw;
   const char *activity_last;







   activity_last = BackendActivityBuffer + BackendActivityBufferSize
    - pgstat_track_activity_query_size;

   if (activity < BackendActivityBuffer ||
    activity > activity_last)
    return ((void*)0);


   if (activity[0] == '\0')
    return ((void*)0);







   ascii_safe_strlcpy(buffer, activity,
          Min(buflen, pgstat_track_activity_query_size));

   return buffer;
  }

  beentry++;
 }


 return ((void*)0);
}
