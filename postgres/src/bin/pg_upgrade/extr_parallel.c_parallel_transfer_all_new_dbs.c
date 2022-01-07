
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * old_tablespace; int * new_pgdata; int * old_pgdata; int * new_db_arr; int * old_db_arr; } ;
typedef TYPE_1__ transfer_thread_arg ;
typedef int pid_t ;
struct TYPE_7__ {int jobs; } ;
typedef scalar_t__ HANDLE ;
typedef int DbInfoArr ;


 scalar_t__ _beginthreadex (int *,int ,void*,TYPE_1__*,int ,int *) ;
 int _exit (int ) ;
 void** cur_thread_args ;
 int errno ;
 int fflush (int *) ;
 scalar_t__ fork () ;
 int parallel_jobs ;
 int pg_fatal (char*,int ) ;
 int pg_free (int *) ;
 void* pg_malloc (int) ;
 TYPE_1__* pg_malloc0 (int) ;
 int * pg_strdup (char*) ;
 int reap_child (int) ;
 int strerror (int ) ;
 scalar_t__* thread_handles ;
 int transfer_all_new_dbs (int *,int *,char*,char*,char*) ;
 TYPE_1__** transfer_thread_args ;
 TYPE_2__ user_opts ;
 scalar_t__ win32_transfer_all_new_dbs ;

void
parallel_transfer_all_new_dbs(DbInfoArr *old_db_arr, DbInfoArr *new_db_arr,
         char *old_pgdata, char *new_pgdata,
         char *old_tablespace)
{

 pid_t child;





 if (user_opts.jobs <= 1)
  transfer_all_new_dbs(old_db_arr, new_db_arr, old_pgdata, new_pgdata, ((void*)0));
 else
 {
  while (reap_child(0) == 1)
   ;


  if (parallel_jobs >= user_opts.jobs)
   reap_child(1);


  parallel_jobs++;


  fflush(((void*)0));


  child = fork();
  if (child == 0)
  {
   transfer_all_new_dbs(old_db_arr, new_db_arr, old_pgdata, new_pgdata,
         old_tablespace);


   _exit(0);
  }
  else if (child < 0)

   pg_fatal("could not create worker process: %s\n", strerror(errno));
 }

 return;
}
