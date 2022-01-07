
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_old_tablespaces; char** old_tablespaces; } ;
struct TYPE_3__ {int transfer_mode; int jobs; } ;
typedef int DbInfoArr ;


 int PG_REPORT ;



 int check_ok () ;
 int end_progress_output () ;
 TYPE_2__ os_info ;
 int parallel_transfer_all_new_dbs (int *,int *,char*,char*,char*) ;
 int pg_log (int ,char*) ;
 int reap_child (int) ;
 TYPE_1__ user_opts ;

void
transfer_all_new_tablespaces(DbInfoArr *old_db_arr, DbInfoArr *new_db_arr,
        char *old_pgdata, char *new_pgdata)
{
 switch (user_opts.transfer_mode)
 {
  case 130:
   pg_log(PG_REPORT, "Cloning user relation files\n");
   break;
  case 129:
   pg_log(PG_REPORT, "Copying user relation files\n");
   break;
  case 128:
   pg_log(PG_REPORT, "Linking user relation files\n");
   break;
 }
 if (user_opts.jobs <= 1)
  parallel_transfer_all_new_dbs(old_db_arr, new_db_arr, old_pgdata,
           new_pgdata, ((void*)0));
 else
 {
  int tblnum;


  parallel_transfer_all_new_dbs(old_db_arr, new_db_arr, old_pgdata,
           new_pgdata, old_pgdata);

  for (tblnum = 0; tblnum < os_info.num_old_tablespaces; tblnum++)
   parallel_transfer_all_new_dbs(old_db_arr,
            new_db_arr,
            old_pgdata,
            new_pgdata,
            os_info.old_tablespaces[tblnum]);

  while (reap_child(1) == 1)
   ;
 }

 end_progress_output();
 check_ok();

 return;
}
