
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int pidstring ;
typedef int int64 ;
typedef int fd_set ;
typedef int buf ;
struct TYPE_10__ {int nsessions; TYPE_1__** sessions; } ;
typedef TYPE_2__ TestSpec ;
struct TYPE_12__ {scalar_t__ be_pid; char* relname; char* extra; } ;
struct TYPE_11__ {int session; char* name; char* sql; char* errormsg; } ;
struct TYPE_9__ {char* name; } ;
typedef TYPE_3__ Step ;
typedef int PGresult ;
typedef TYPE_4__ PGnotify ;
typedef int PGconn ;
typedef int PGcancel ;


 scalar_t__ EINTR ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;



 int PG_DIAG_MESSAGE_PRIMARY ;
 int PG_DIAG_SEVERITY ;
 scalar_t__ PQcancel (int *,char*,int) ;
 int PQclear (int *) ;
 int PQconsumeInput (int *) ;
 char* PQerrorMessage (int *) ;
 int * PQexecPrepared (int *,int ,int,int *,int *,int *,int ) ;
 int PQfreeCancel (int *) ;
 int PQfreemem (TYPE_4__*) ;
 int * PQgetCancel (int *) ;
 int * PQgetResult (int *) ;
 char* PQgetvalue (int *,int ,int ) ;
 scalar_t__ PQisBusy (int *) ;
 TYPE_4__* PQnotifies (int *) ;
 int PQntuples (int *) ;
 char* PQresStatus (int) ;
 char* PQresultErrorField (int *,int ) ;
 int PQresultErrorMessage (int *) ;
 int PQresultStatus (int *) ;
 int PQsocket (int *) ;
 int PREP_WAITING ;
 int STEP_NONBLOCK ;
 int STEP_RETRY ;
 int USECS_PER_SEC ;
 int * backend_pid_strs ;
 scalar_t__* backend_pids ;
 int ** conns ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 char* pg_strdup (int ) ;
 int printResultSet (int *) ;
 int printf (char*,...) ;
 char* psprintf (char*,char const*,char const*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int stderr ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static bool
try_complete_step(TestSpec *testspec, Step *step, int flags)
{
 PGconn *conn = conns[1 + step->session];
 fd_set read_set;
 struct timeval start_time;
 struct timeval timeout;
 int sock = PQsocket(conn);
 int ret;
 PGresult *res;
 PGnotify *notify;
 bool canceled = 0;

 if (sock < 0)
 {
  fprintf(stderr, "invalid socket: %s", PQerrorMessage(conn));
  exit(1);
 }

 gettimeofday(&start_time, ((void*)0));
 FD_ZERO(&read_set);

 while (PQisBusy(conn))
 {
  FD_SET(sock, &read_set);
  timeout.tv_sec = 0;
  timeout.tv_usec = 10000;

  ret = select(sock + 1, &read_set, ((void*)0), ((void*)0), &timeout);
  if (ret < 0)
  {
   if (errno == EINTR)
    continue;
   fprintf(stderr, "select failed: %s\n", strerror(errno));
   exit(1);
  }
  else if (ret == 0)
  {
   struct timeval current_time;
   int64 td;


   if (flags & STEP_NONBLOCK)
   {
    bool waiting;

    res = PQexecPrepared(conns[0], PREP_WAITING, 1,
          &backend_pid_strs[step->session + 1],
          ((void*)0), ((void*)0), 0);
    if (PQresultStatus(res) != 128 ||
     PQntuples(res) != 1)
    {
     fprintf(stderr, "lock wait query failed: %s",
       PQerrorMessage(conns[0]));
     exit(1);
    }
    waiting = ((PQgetvalue(res, 0, 0))[0] == 't');
    PQclear(res);

    if (waiting)
    {
     if (!PQconsumeInput(conn))
     {
      fprintf(stderr, "PQconsumeInput failed: %s\n",
        PQerrorMessage(conn));
      exit(1);
     }
     if (!PQisBusy(conn))
      break;





     if (!(flags & STEP_RETRY))
      printf("step %s: %s <waiting ...>\n",
          step->name, step->sql);
     return 1;
    }

   }


   gettimeofday(&current_time, ((void*)0));
   td = (int64) current_time.tv_sec - (int64) start_time.tv_sec;
   td *= USECS_PER_SEC;
   td += (int64) current_time.tv_usec - (int64) start_time.tv_usec;
   if (td > 180 * USECS_PER_SEC && !canceled)
   {
    PGcancel *cancel = PQgetCancel(conn);

    if (cancel != ((void*)0))
    {
     char buf[256];

     if (PQcancel(cancel, buf, sizeof(buf)))
      canceled = 1;
     else
      fprintf(stderr, "PQcancel failed: %s\n", buf);
     PQfreeCancel(cancel);
    }
   }
   if (td > 200 * USECS_PER_SEC)
   {
    fprintf(stderr, "step %s timed out after 200 seconds\n",
      step->name);
    exit(1);
   }
  }
  else if (!PQconsumeInput(conn))
  {
   fprintf(stderr, "PQconsumeInput failed: %s\n",
     PQerrorMessage(conn));
   exit(1);
  }
 }

 if (flags & STEP_RETRY)
  printf("step %s: <... completed>\n", step->name);
 else
  printf("step %s: %s\n", step->name, step->sql);

 while ((res = PQgetResult(conn)))
 {
  switch (PQresultStatus(res))
  {
   case 130:
    break;
   case 128:
    printResultSet(res);
    break;
   case 129:
    if (step->errormsg != ((void*)0))
    {
     printf("WARNING: this step had a leftover error message\n");
     printf("%s\n", step->errormsg);
    }






    {
     const char *sev = PQresultErrorField(res,
               PG_DIAG_SEVERITY);
     const char *msg = PQresultErrorField(res,
               PG_DIAG_MESSAGE_PRIMARY);

     if (sev && msg)
      step->errormsg = psprintf("%s:  %s", sev, msg);
     else
      step->errormsg = pg_strdup(PQresultErrorMessage(res));
    }
    break;
   default:
    printf("unexpected result status: %s\n",
        PQresStatus(PQresultStatus(res)));
  }
  PQclear(res);
 }


 PQconsumeInput(conn);
 while ((notify = PQnotifies(conn)) != ((void*)0))
 {

  const char *sendername = ((void*)0);
  char pidstring[32];

  for (int i = 0; i < testspec->nsessions; i++)
  {
   if (notify->be_pid == backend_pids[i + 1])
   {
    sendername = testspec->sessions[i]->name;
    break;
   }
  }
  if (sendername == ((void*)0))
  {

   snprintf(pidstring, sizeof(pidstring), "PID %d", notify->be_pid);
   sendername = pidstring;
  }
  printf("%s: NOTIFY \"%s\" with payload \"%s\" from %s\n",
      testspec->sessions[step->session]->name,
      notify->relname, notify->extra, sendername);
  PQfreemem(notify);
  PQconsumeInput(conn);
 }

 return 0;
}
