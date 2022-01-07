
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int socket_set ;
typedef int logpath ;
typedef int int64 ;
typedef int instr_time ;
struct TYPE_10__ {scalar_t__ state; int sleep_until; int txn_scheduled; int * con; } ;
struct TYPE_9__ {int nstate; scalar_t__ tid; int * logfile; int conn_time; int start_time; void* throttle_trigger; TYPE_2__* state; } ;
typedef TYPE_1__ TState ;
typedef int StatsData ;
typedef TYPE_2__ CState ;


 scalar_t__ CSTATE_ABORTED ;
 scalar_t__ CSTATE_CHOOSE_SCRIPT ;
 scalar_t__ CSTATE_FINISHED ;
 scalar_t__ CSTATE_SLEEP ;
 scalar_t__ CSTATE_THROTTLE ;
 scalar_t__ CSTATE_WAIT_RESULT ;
 scalar_t__ EINTR ;
 int INSTR_TIME_ACCUM_DIFF (int ,int ,int ) ;
 void* INSTR_TIME_GET_MICROSEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SET_ZERO (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int MAXPGPATH ;
 int PG_INT64_MAX ;
 char* PQerrorMessage (int *) ;
 int PQsocket (int *) ;
 char* SOCKET_WAIT_METHOD ;
 int add_socket_to_set (int *,int,int ) ;
 int advanceConnectionState (TYPE_1__*,TYPE_2__*,int *) ;
 scalar_t__ agg_interval ;
 int * alloc_socket_set (int) ;
 int clear_socket_set (int *) ;
 int disconnect_all (TYPE_2__*,int) ;
 int * doConnect () ;
 int doLog (TYPE_1__*,TYPE_2__*,int *,int,int ,int ) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int free_socket_set (int *) ;
 int initStats (int *,int ) ;
 int is_connect ;
 char* logfile_prefix ;
 int main_pid ;
 int pg_usleep (int) ;
 int printProgressReport (TYPE_1__*,int,int,int *,int*) ;
 scalar_t__ progress ;
 int snprintf (char*,int,char*,char*,int,...) ;
 int socket_has_input (int *,int,int ) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int time (int *) ;
 scalar_t__ use_log ;
 int wait_on_socket_set (int *,int) ;

__attribute__((used)) static void *
threadRun(void *arg)
{
 TState *thread = (TState *) arg;
 CState *state = thread->state;
 instr_time start,
    end;
 int nstate = thread->nstate;
 int remains = nstate;
 socket_set *sockets = alloc_socket_set(nstate);
 int i;


 int64 thread_start = INSTR_TIME_GET_MICROSEC(thread->start_time);
 int64 last_report = thread_start;
 int64 next_report = last_report + (int64) progress * 1000000;
 StatsData last,
    aggs;







 INSTR_TIME_SET_CURRENT(start);
 thread->throttle_trigger = INSTR_TIME_GET_MICROSEC(start);

 INSTR_TIME_SET_ZERO(thread->conn_time);

 initStats(&aggs, time(((void*)0)));
 last = aggs;


 if (use_log)
 {
  char logpath[MAXPGPATH];
  char *prefix = logfile_prefix ? logfile_prefix : "pgbench_log";

  if (thread->tid == 0)
   snprintf(logpath, sizeof(logpath), "%s.%d", prefix, main_pid);
  else
   snprintf(logpath, sizeof(logpath), "%s.%d.%d", prefix, main_pid, thread->tid);

  thread->logfile = fopen(logpath, "w");

  if (thread->logfile == ((void*)0))
  {
   fprintf(stderr, "could not open logfile \"%s\": %s\n",
     logpath, strerror(errno));
   goto done;
  }
 }

 if (!is_connect)
 {

  for (i = 0; i < nstate; i++)
  {
   if ((state[i].con = doConnect()) == ((void*)0))
    goto done;
  }
 }


 INSTR_TIME_SET_CURRENT(thread->conn_time);
 INSTR_TIME_SUBTRACT(thread->conn_time, thread->start_time);


 for (i = 0; i < nstate; i++)
 {
  state[i].state = CSTATE_CHOOSE_SCRIPT;
 }


 while (remains > 0)
 {
  int nsocks;
  int64 min_usec;
  int64 now_usec = 0;





  clear_socket_set(sockets);
  nsocks = 0;
  min_usec = PG_INT64_MAX;
  for (i = 0; i < nstate; i++)
  {
   CState *st = &state[i];

   if (st->state == CSTATE_SLEEP || st->state == CSTATE_THROTTLE)
   {

    int64 this_usec;


    if (now_usec == 0)
    {
     instr_time now;

     INSTR_TIME_SET_CURRENT(now);
     now_usec = INSTR_TIME_GET_MICROSEC(now);
    }


    this_usec = (st->state == CSTATE_SLEEP ?
        st->sleep_until : st->txn_scheduled) - now_usec;
    if (min_usec > this_usec)
     min_usec = this_usec;
   }
   else if (st->state == CSTATE_WAIT_RESULT)
   {




    int sock = PQsocket(st->con);

    if (sock < 0)
    {
     fprintf(stderr, "invalid socket: %s",
       PQerrorMessage(st->con));
     goto done;
    }

    add_socket_to_set(sockets, sock, nsocks++);
   }
   else if (st->state != CSTATE_ABORTED &&
      st->state != CSTATE_FINISHED)
   {




    min_usec = 0;
    break;
   }
  }


  if (progress && min_usec > 0 && thread->tid == 0)
  {

   if (now_usec == 0)
   {
    instr_time now;

    INSTR_TIME_SET_CURRENT(now);
    now_usec = INSTR_TIME_GET_MICROSEC(now);
   }

   if (now_usec >= next_report)
    min_usec = 0;
   else if ((next_report - now_usec) < min_usec)
    min_usec = next_report - now_usec;
  }





  if (min_usec > 0)
  {
   int rc = 0;

   if (min_usec != PG_INT64_MAX)
   {
    if (nsocks > 0)
    {
     rc = wait_on_socket_set(sockets, min_usec);
    }
    else
    {
     pg_usleep(min_usec);
    }
   }
   else
   {
    rc = wait_on_socket_set(sockets, 0);
   }

   if (rc < 0)
   {
    if (errno == EINTR)
    {

     continue;
    }

    fprintf(stderr, "%s() failed: %s\n", SOCKET_WAIT_METHOD, strerror(errno));
    goto done;
   }
  }
  else
  {



   clear_socket_set(sockets);
  }


  nsocks = 0;
  for (i = 0; i < nstate; i++)
  {
   CState *st = &state[i];

   if (st->state == CSTATE_WAIT_RESULT)
   {

    int sock = PQsocket(st->con);

    if (sock < 0)
    {
     fprintf(stderr, "invalid socket: %s",
       PQerrorMessage(st->con));
     goto done;
    }

    if (!socket_has_input(sockets, sock, nsocks++))
     continue;
   }
   else if (st->state == CSTATE_FINISHED ||
      st->state == CSTATE_ABORTED)
   {

    continue;
   }

   advanceConnectionState(thread, st, &aggs);





   if (st->state == CSTATE_FINISHED || st->state == CSTATE_ABORTED)
    remains--;
  }


  if (progress && thread->tid == 0)
  {
   instr_time now_time;
   int64 now;

   INSTR_TIME_SET_CURRENT(now_time);
   now = INSTR_TIME_GET_MICROSEC(now_time);
   if (now >= next_report)
   {






    printProgressReport(thread, thread_start, now,
         &last, &last_report);





    do
    {
     next_report += (int64) progress * 1000000;
    } while (now >= next_report);
   }
  }
 }

done:
 INSTR_TIME_SET_CURRENT(start);
 disconnect_all(state, nstate);
 INSTR_TIME_SET_CURRENT(end);
 INSTR_TIME_ACCUM_DIFF(thread->conn_time, end, start);
 if (thread->logfile)
 {
  if (agg_interval > 0)
  {

   doLog(thread, state, &aggs, 0, 0, 0);
  }
  fclose(thread->logfile);
  thread->logfile = ((void*)0);
 }
 free_socket_set(sockets);
 return ((void*)0);
}
