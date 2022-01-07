
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cat_ver; } ;
struct TYPE_8__ {int pgdata; int bindir; TYPE_1__ controldata; int major_version; } ;
struct TYPE_6__ {scalar_t__ cat_ver; scalar_t__ nextxlogfile; scalar_t__ chkpnt_nxtmulti; int chkpnt_oldstMulti; int chkpnt_nxtmxoff; scalar_t__ chkpnt_nxtxid; scalar_t__ chkpnt_nxtepoch; } ;
struct TYPE_7__ {TYPE_2__ controldata; int major_version; } ;


 int GET_MAJOR_VERSION (int ) ;
 scalar_t__ MULTIXACT_FORMATCHANGE_CAT_VER ;
 int UTILITY_LOG_FILE ;
 int check_ok () ;
 int copy_subdir_files (char*,char*) ;
 int exec_prog (int ,int *,int,int,char*,int ,scalar_t__,int ,...) ;
 TYPE_4__ new_cluster ;
 TYPE_3__ old_cluster ;
 int prep_status (char*) ;
 int remove_new_subdir (char*,int) ;

__attribute__((used)) static void
copy_xact_xlog_xid(void)
{




 copy_subdir_files(GET_MAJOR_VERSION(old_cluster.major_version) < 1000 ?
       "pg_clog" : "pg_xact",
       GET_MAJOR_VERSION(new_cluster.major_version) < 1000 ?
       "pg_clog" : "pg_xact");


 prep_status("Setting next transaction ID and epoch for new cluster");
 exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
     "\"%s/pg_resetwal\" -f -x %u \"%s\"",
     new_cluster.bindir, old_cluster.controldata.chkpnt_nxtxid,
     new_cluster.pgdata);
 exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
     "\"%s/pg_resetwal\" -f -e %u \"%s\"",
     new_cluster.bindir, old_cluster.controldata.chkpnt_nxtepoch,
     new_cluster.pgdata);

 exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
     "\"%s/pg_resetwal\" -f -c %u,%u \"%s\"",
     new_cluster.bindir,
     old_cluster.controldata.chkpnt_nxtxid,
     old_cluster.controldata.chkpnt_nxtxid,
     new_cluster.pgdata);
 check_ok();







 if (old_cluster.controldata.cat_ver >= MULTIXACT_FORMATCHANGE_CAT_VER &&
  new_cluster.controldata.cat_ver >= MULTIXACT_FORMATCHANGE_CAT_VER)
 {
  copy_subdir_files("pg_multixact/offsets", "pg_multixact/offsets");
  copy_subdir_files("pg_multixact/members", "pg_multixact/members");

  prep_status("Setting next multixact ID and offset for new cluster");





  exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
      "\"%s/pg_resetwal\" -O %u -m %u,%u \"%s\"",
      new_cluster.bindir,
      old_cluster.controldata.chkpnt_nxtmxoff,
      old_cluster.controldata.chkpnt_nxtmulti,
      old_cluster.controldata.chkpnt_oldstMulti,
      new_cluster.pgdata);
  check_ok();
 }
 else if (new_cluster.controldata.cat_ver >= MULTIXACT_FORMATCHANGE_CAT_VER)
 {





  remove_new_subdir("pg_multixact/offsets", 0);

  prep_status("Setting oldest multixact ID in new cluster");
  exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
      "\"%s/pg_resetwal\" -m %u,%u \"%s\"",
      new_cluster.bindir,
      old_cluster.controldata.chkpnt_nxtmulti + 1,
      old_cluster.controldata.chkpnt_nxtmulti,
      new_cluster.pgdata);
  check_ok();
 }


 prep_status("Resetting WAL archives");
 exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,

     "\"%s/pg_resetwal\" -l 00000001%s \"%s\"", new_cluster.bindir,
     old_cluster.controldata.nextxlogfile + 8,
     new_cluster.pgdata);
 check_ok();
}
