
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int chkpnt_nxtoid; } ;
struct TYPE_10__ {int pgdata; int bindir; TYPE_1__ controldata; int dbarr; } ;
struct TYPE_9__ {scalar_t__ transfer_mode; } ;


 int GetDataDirectoryCreatePerm (int ) ;
 int PG_MODE_MASK_OWNER ;
 int PG_REPORT ;
 int PG_TEXTDOMAIN (char*) ;
 scalar_t__ TRANSFER_MODE_LINK ;
 int UTILITY_LOG_FILE ;
 int adjust_data_dir (TYPE_3__*) ;
 int check_and_dump_old_cluster (int) ;
 int check_cluster_compatibility (int) ;
 int check_cluster_versions () ;
 int check_new_cluster () ;
 int check_ok () ;
 int cleanup () ;
 int copy_xact_xlog_xid () ;
 int create_new_objects () ;
 int create_script_for_cluster_analyze (char**) ;
 int create_script_for_old_cluster_deletion (char**) ;
 int disable_old_cluster () ;
 int errno ;
 int exec_prog (int ,int *,int,int,char*,int ,int ,...) ;
 int get_restricted_token () ;
 int get_sock_dir (TYPE_3__*,int) ;
 int issue_warnings_and_set_wal_level () ;
 TYPE_3__ new_cluster ;
 TYPE_3__ old_cluster ;
 int output_check_banner (int) ;
 int output_completion_banner (char*,char*) ;
 int parseCommandLine (int,char**) ;
 int pg_fatal (char*,int ,int ) ;
 int pg_free (char*) ;
 int pg_log (int ,char*) ;
 int pg_logging_init (char*) ;
 int pg_mode_mask ;
 int prep_status (char*) ;
 int prepare_new_cluster () ;
 int prepare_new_globals () ;
 int report_clusters_compatible () ;
 int set_pglocale_pgservice (char*,int ) ;
 int setup (char*,int*) ;
 int start_postmaster (TYPE_3__*,int) ;
 int stop_postmaster (int) ;
 int strerror (int ) ;
 int transfer_all_new_tablespaces (int *,int *,int ,int ) ;
 int umask (int ) ;
 TYPE_2__ user_opts ;

int
main(int argc, char **argv)
{
 char *analyze_script_file_name = ((void*)0);
 char *deletion_script_file_name = ((void*)0);
 bool live_check = 0;

 pg_logging_init(argv[0]);
 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pg_upgrade"));


 umask(PG_MODE_MASK_OWNER);

 parseCommandLine(argc, argv);

 get_restricted_token();

 adjust_data_dir(&old_cluster);
 adjust_data_dir(&new_cluster);

 setup(argv[0], &live_check);

 output_check_banner(live_check);

 check_cluster_versions();

 get_sock_dir(&old_cluster, live_check);
 get_sock_dir(&new_cluster, 0);

 check_cluster_compatibility(live_check);


 if (!GetDataDirectoryCreatePerm(new_cluster.pgdata))
  pg_fatal("could not read permissions of directory \"%s\": %s\n",
     new_cluster.pgdata, strerror(errno));

 umask(pg_mode_mask);

 check_and_dump_old_cluster(live_check);



 start_postmaster(&new_cluster, 1);

 check_new_cluster();
 report_clusters_compatible();

 pg_log(PG_REPORT,
     "\n"
     "Performing Upgrade\n"
     "------------------\n");

 prepare_new_cluster();

 stop_postmaster(0);





 copy_xact_xlog_xid();




 start_postmaster(&new_cluster, 1);

 prepare_new_globals();

 create_new_objects();

 stop_postmaster(0);







 if (user_opts.transfer_mode == TRANSFER_MODE_LINK)
  disable_old_cluster();

 transfer_all_new_tablespaces(&old_cluster.dbarr, &new_cluster.dbarr,
         old_cluster.pgdata, new_cluster.pgdata);







 prep_status("Setting next OID for new cluster");
 exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
     "\"%s/pg_resetwal\" -o %u \"%s\"",
     new_cluster.bindir, old_cluster.controldata.chkpnt_nxtoid,
     new_cluster.pgdata);
 check_ok();

 prep_status("Sync data directory to disk");
 exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
     "\"%s/initdb\" --sync-only \"%s\"", new_cluster.bindir,
     new_cluster.pgdata);
 check_ok();

 create_script_for_cluster_analyze(&analyze_script_file_name);
 create_script_for_old_cluster_deletion(&deletion_script_file_name);

 issue_warnings_and_set_wal_level();

 pg_log(PG_REPORT,
     "\n"
     "Upgrade Complete\n"
     "----------------\n");

 output_completion_banner(analyze_script_file_name,
        deletion_script_file_name);

 pg_free(analyze_script_file_name);
 pg_free(deletion_script_file_name);

 cleanup();

 return 0;
}
