
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int nsessions; int nsetupsqls; scalar_t__ teardownsql; TYPE_1__** sessions; scalar_t__* setupsqls; } ;
typedef TYPE_2__ TestSpec ;
struct TYPE_17__ {int used; char* name; int session; int sql; } ;
struct TYPE_15__ {char* name; scalar_t__ teardownsql; scalar_t__ setupsql; } ;
typedef TYPE_3__ Step ;
typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 char* PQerrorMessage (int *) ;
 int * PQexec (int *,scalar_t__) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendQuery (int *,int ) ;
 int STEP_NONBLOCK ;
 int STEP_RETRY ;
 int ** conns ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int free (TYPE_3__**) ;
 int memmove (TYPE_3__**,TYPE_3__**,int) ;
 TYPE_3__** pg_malloc (int) ;
 int printResultSet (int *) ;
 int printf (char*,...) ;
 int report_error_message (TYPE_3__*) ;
 int report_multiple_error_messages (TYPE_3__*,int,TYPE_3__**) ;
 int stderr ;
 int stdout ;
 int try_complete_step (TYPE_2__*,TYPE_3__*,int) ;

__attribute__((used)) static void
run_permutation(TestSpec *testspec, int nsteps, Step **steps)
{
 PGresult *res;
 int i;
 int w;
 int nwaiting = 0;
 int nerrorstep = 0;
 Step **waiting;
 Step **errorstep;

 waiting = pg_malloc(sizeof(Step *) * testspec->nsessions);
 errorstep = pg_malloc(sizeof(Step *) * testspec->nsessions);

 printf("\nstarting permutation:");
 for (i = 0; i < nsteps; i++)
 {

  steps[i]->used = 1;
  printf(" %s", steps[i]->name);
 }
 printf("\n");


 for (i = 0; i < testspec->nsetupsqls; i++)
 {
  res = PQexec(conns[0], testspec->setupsqls[i]);
  if (PQresultStatus(res) == PGRES_TUPLES_OK)
  {
   printResultSet(res);
  }
  else if (PQresultStatus(res) != PGRES_COMMAND_OK)
  {
   fprintf(stderr, "setup failed: %s", PQerrorMessage(conns[0]));
   exit(1);
  }
  PQclear(res);
 }


 for (i = 0; i < testspec->nsessions; i++)
 {
  if (testspec->sessions[i]->setupsql)
  {
   res = PQexec(conns[i + 1], testspec->sessions[i]->setupsql);
   if (PQresultStatus(res) == PGRES_TUPLES_OK)
   {
    printResultSet(res);
   }
   else if (PQresultStatus(res) != PGRES_COMMAND_OK)
   {
    fprintf(stderr, "setup of session %s failed: %s",
      testspec->sessions[i]->name,
      PQerrorMessage(conns[i + 1]));
    exit(1);
   }
   PQclear(res);
  }
 }


 for (i = 0; i < nsteps; i++)
 {
  Step *step = steps[i];
  PGconn *conn = conns[1 + step->session];
  Step *oldstep = ((void*)0);
  bool mustwait;
  for (w = 0; w < nwaiting; ++w)
  {
   if (step->session == waiting[w]->session)
   {
    oldstep = waiting[w];


    try_complete_step(testspec, oldstep, STEP_RETRY);


    if (w + 1 < nwaiting)
     memmove(&waiting[w], &waiting[w + 1],
       (nwaiting - (w + 1)) * sizeof(Step *));
    nwaiting--;

    break;
   }
  }
  if (oldstep != ((void*)0))
  {





   w = 0;
   nerrorstep = 0;
   while (w < nwaiting)
   {
    if (try_complete_step(testspec, waiting[w],
           STEP_NONBLOCK | STEP_RETRY))
    {

     w++;
    }
    else
    {

     errorstep[nerrorstep++] = waiting[w];
     if (w + 1 < nwaiting)
      memmove(&waiting[w], &waiting[w + 1],
        (nwaiting - (w + 1)) * sizeof(Step *));
     nwaiting--;
    }
   }


   report_multiple_error_messages(oldstep, nerrorstep, errorstep);
  }


  if (!PQsendQuery(conn, step->sql))
  {
   fprintf(stdout, "failed to send query for step %s: %s\n",
     step->name, PQerrorMessage(conn));
   exit(1);
  }


  mustwait = try_complete_step(testspec, step, STEP_NONBLOCK);


  w = 0;
  nerrorstep = 0;
  while (w < nwaiting)
  {
   if (try_complete_step(testspec, waiting[w],
          STEP_NONBLOCK | STEP_RETRY))
    w++;
   else
   {
    errorstep[nerrorstep++] = waiting[w];
    if (w + 1 < nwaiting)
     memmove(&waiting[w], &waiting[w + 1],
       (nwaiting - (w + 1)) * sizeof(Step *));
    nwaiting--;
   }
  }


  report_multiple_error_messages(step, nerrorstep, errorstep);


  if (mustwait)
   waiting[nwaiting++] = step;
 }


 for (w = 0; w < nwaiting; ++w)
 {
  try_complete_step(testspec, waiting[w], STEP_RETRY);
  report_error_message(waiting[w]);
 }


 for (i = 0; i < testspec->nsessions; i++)
 {
  if (testspec->sessions[i]->teardownsql)
  {
   res = PQexec(conns[i + 1], testspec->sessions[i]->teardownsql);
   if (PQresultStatus(res) == PGRES_TUPLES_OK)
   {
    printResultSet(res);
   }
   else if (PQresultStatus(res) != PGRES_COMMAND_OK)
   {
    fprintf(stderr, "teardown of session %s failed: %s",
      testspec->sessions[i]->name,
      PQerrorMessage(conns[i + 1]));

   }
   PQclear(res);
  }
 }


 if (testspec->teardownsql)
 {
  res = PQexec(conns[0], testspec->teardownsql);
  if (PQresultStatus(res) == PGRES_TUPLES_OK)
  {
   printResultSet(res);
  }
  else if (PQresultStatus(res) != PGRES_COMMAND_OK)
  {
   fprintf(stderr, "teardown failed: %s",
     PQerrorMessage(conns[0]));

  }
  PQclear(res);
 }

 free(waiting);
 free(errorstep);
}
