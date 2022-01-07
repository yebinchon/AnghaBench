
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_6__ {char* data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGconn ;


 double INSTR_TIME_GET_DOUBLE (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int PQfinish (int *) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char*,double) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int * doConnect () ;
 int exit (int) ;
 int fprintf (int ,char*,char const,...) ;
 int initCreateFKeys (int *) ;
 int initCreatePKeys (int *) ;
 int initCreateTables (int *) ;
 int initDropTables (int *) ;
 int initGenerateDataClientSide (int *) ;
 int initGenerateDataServerSide (int *) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int initVacuum (int *) ;
 int stderr ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static void
runInitSteps(const char *initialize_steps)
{
 PQExpBufferData stats;
 PGconn *con;
 const char *step;
 double run_time = 0.0;
 bool first = 1;

 initPQExpBuffer(&stats);

 if ((con = doConnect()) == ((void*)0))
  exit(1);

 for (step = initialize_steps; *step != '\0'; step++)
 {
  instr_time start;
  char *op = ((void*)0);

  INSTR_TIME_SET_CURRENT(start);

  switch (*step)
  {
   case 'd':
    op = "drop tables";
    initDropTables(con);
    break;
   case 't':
    op = "create tables";
    initCreateTables(con);
    break;
   case 'g':
    op = "client-side generate";
    initGenerateDataClientSide(con);
    break;
   case 'G':
    op = "server-side generate";
    initGenerateDataServerSide(con);
    break;
   case 'v':
    op = "vacuum";
    initVacuum(con);
    break;
   case 'p':
    op = "primary keys";
    initCreatePKeys(con);
    break;
   case 'f':
    op = "foreign keys";
    initCreateFKeys(con);
    break;
   case ' ':
    break;
   default:
    fprintf(stderr, "unrecognized initialization step \"%c\"\n",
      *step);
    PQfinish(con);
    exit(1);
  }

  if (op != ((void*)0))
  {
   instr_time diff;
   double elapsed_sec;

   INSTR_TIME_SET_CURRENT(diff);
   INSTR_TIME_SUBTRACT(diff, start);
   elapsed_sec = INSTR_TIME_GET_DOUBLE(diff);

   if (!first)
    appendPQExpBufferStr(&stats, ", ");
   else
    first = 0;

   appendPQExpBuffer(&stats, "%s %.2f s", op, elapsed_sec);

   run_time += elapsed_sec;
  }
 }

 fprintf(stderr, "done in %.2f s (%s).\n", run_time, stats.data);
 PQfinish(con);
 termPQExpBuffer(&stats);
}
