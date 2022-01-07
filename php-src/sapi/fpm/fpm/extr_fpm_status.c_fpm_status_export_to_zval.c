
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ time_t ;
struct timeval {unsigned long tv_sec; scalar_t__ tv_usec; } ;
struct fpm_scoreboard_s {char* pool; int nprocs; scalar_t__ slow_rq; scalar_t__ max_children_reached; scalar_t__ active_max; scalar_t__ active; scalar_t__ idle; scalar_t__ lq_len; scalar_t__ lq_max; scalar_t__ lq; scalar_t__ requests; scalar_t__ start_epoch; int pm; } ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int tms_utime; int tms_stime; int tms_cutime; int tms_cstime; } ;
struct fpm_scoreboard_proc_s {int used; scalar_t__ request_stage; char* request_method; char* request_uri; char* query_string; char* auth_user; char* script_filename; scalar_t__ memory; scalar_t__ content_length; int accepted; struct timeval duration; scalar_t__ requests; scalar_t__ start_epoch; scalar_t__ pid; TYPE_2__ cpu_duration; TYPE_1__ last_request_cpu; } ;


 scalar_t__ FPM_REQUEST_ACCEPTING ;
 char* PM2STR (int ) ;
 int ZLOG_NOTICE ;
 int add_assoc_double (int *,char*,double) ;
 int add_assoc_long (int *,char*,scalar_t__) ;
 int add_assoc_string (int *,char*,char*) ;
 int add_assoc_zval (int *,char*,int *) ;
 int add_next_index_zval (int *,int *) ;
 int array_init (int *) ;
 int fpm_clock_get (struct timeval*) ;
 char* fpm_request_get_stage_name (scalar_t__) ;
 struct fpm_scoreboard_s* fpm_scoreboard_acquire (int *,int) ;
 int fpm_scoreboard_get_tick () ;
 struct fpm_scoreboard_proc_s* fpm_scoreboard_proc_acquire (struct fpm_scoreboard_s*,int,int) ;
 int fpm_scoreboard_proc_release (struct fpm_scoreboard_proc_s*) ;
 int fpm_scoreboard_release (struct fpm_scoreboard_s*) ;
 scalar_t__ time (int *) ;
 int timersub (struct timeval*,int *,struct timeval*) ;
 int zlog (int ,char*,char*) ;

int fpm_status_export_to_zval(zval *status)
{
 struct fpm_scoreboard_s scoreboard, *scoreboard_p;
 zval fpm_proc_stats, fpm_proc_stat;
 time_t now_epoch;
 struct timeval duration, now;
 double cpu;
 int i;


 scoreboard_p = fpm_scoreboard_acquire(((void*)0), 1);
 if (!scoreboard_p) {
  zlog(ZLOG_NOTICE, "[pool %s] status: scoreboard already in use.", scoreboard_p->pool);
  return -1;
 }


 scoreboard = *scoreboard_p;
 struct fpm_scoreboard_proc_s procs[scoreboard.nprocs];

 struct fpm_scoreboard_proc_s *proc_p;
 for(i=0; i<scoreboard.nprocs; i++) {
  proc_p = fpm_scoreboard_proc_acquire(scoreboard_p, i, 1);
  if (!proc_p){
   procs[i].used=-1;
   continue;
  }
  procs[i] = *proc_p;
  fpm_scoreboard_proc_release(proc_p);
 }
 fpm_scoreboard_release(scoreboard_p);

 now_epoch = time(((void*)0));
 fpm_clock_get(&now);

 array_init(status);
 add_assoc_string(status, "pool", scoreboard.pool);
 add_assoc_string(status, "process-manager", PM2STR(scoreboard.pm));
 add_assoc_long(status, "start-time", scoreboard.start_epoch);
 add_assoc_long(status, "start-since", now_epoch - scoreboard.start_epoch);
 add_assoc_long(status, "accepted-conn", scoreboard.requests);





 add_assoc_long(status, "idle-processes", scoreboard.idle);
 add_assoc_long(status, "active-processes", scoreboard.active);
 add_assoc_long(status, "total-processes", scoreboard.idle + scoreboard.active);
 add_assoc_long(status, "max-active-processes", scoreboard.active_max);
 add_assoc_long(status, "max-children-reached", scoreboard.max_children_reached);
 add_assoc_long(status, "slow-requests", scoreboard.slow_rq);

 array_init(&fpm_proc_stats);
 for(i=0; i<scoreboard.nprocs; i++) {
  if (!procs[i].used) {
   continue;
  }
  proc_p = &procs[i];
  array_init(&fpm_proc_stat);
  add_assoc_long(&fpm_proc_stat, "pid", procs[i].pid);
  add_assoc_string(&fpm_proc_stat, "state", fpm_request_get_stage_name(procs[i].request_stage));
  add_assoc_long(&fpm_proc_stat, "start-time", procs[i].start_epoch);
  add_assoc_long(&fpm_proc_stat, "start-since", now_epoch - procs[i].start_epoch);
  add_assoc_long(&fpm_proc_stat, "requests", procs[i].requests);
  if (procs[i].request_stage == FPM_REQUEST_ACCEPTING) {
   duration = procs[i].duration;
  } else {
   timersub(&now, &procs[i].accepted, &duration);
  }
  add_assoc_long(&fpm_proc_stat, "request-duration", duration.tv_sec * 1000000UL + duration.tv_usec);
  add_assoc_string(&fpm_proc_stat, "request-method", procs[i].request_method[0] != '\0' ? procs[i].request_method : "-");
  add_assoc_string(&fpm_proc_stat, "request-uri", procs[i].request_uri);
  add_assoc_string(&fpm_proc_stat, "query-string", procs[i].query_string);
  add_assoc_long(&fpm_proc_stat, "request-length", procs[i].content_length);
  add_assoc_string(&fpm_proc_stat, "user", procs[i].auth_user[0] != '\0' ? procs[i].auth_user : "-");
  add_assoc_string(&fpm_proc_stat, "script", procs[i].script_filename[0] != '\0' ? procs[i].script_filename : "-");



  add_assoc_long(&fpm_proc_stat, "last-request-memory", procs[i].request_stage == FPM_REQUEST_ACCEPTING ? procs[i].memory : 0);
  add_next_index_zval(&fpm_proc_stats, &fpm_proc_stat);
 }
 add_assoc_zval(status, "procs", &fpm_proc_stats);
 return 0;
}
