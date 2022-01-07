
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* name; void* schema; } ;
typedef TYPE_1__ worktable ;
typedef void* int32 ;
struct TYPE_12__ {int bgw_name; } ;
struct TYPE_11__ {int tupdesc; int * vals; } ;
struct TYPE_10__ {int * data; } ;
typedef TYPE_2__ StringInfoData ;
typedef int Datum ;


 int BackgroundWorkerInitializeConnection (int ,int *,int ) ;
 int BackgroundWorkerUnblockSignals () ;
 int CHECK_FOR_INTERRUPTS () ;
 int CommitTransactionCommand () ;
 void* DatumGetInt32 (int ) ;
 int FATAL ;
 int GetTransactionSnapshot () ;
 int LOG ;
 TYPE_8__* MyBgworkerEntry ;
 int MyLatch ;
 int PGC_SIGHUP ;
 int PG_WAIT_EXTENSION ;
 int PopActiveSnapshot () ;
 int ProcessConfigFile (int ) ;
 int PushActiveSnapshot (int ) ;
 int ResetLatch (int ) ;
 int SIGHUP ;
 int SIGTERM ;
 int SPI_OK_UPDATE_RETURNING ;
 int SPI_connect () ;
 int SPI_execute (int *,int,int ) ;
 int SPI_finish () ;
 int SPI_getbinval (int ,int ,int,int*) ;
 scalar_t__ SPI_processed ;
 TYPE_7__* SPI_tuptable ;
 int STATE_IDLE ;
 int STATE_RUNNING ;
 int SetCurrentStatementStartTimestamp () ;
 int StartTransactionCommand () ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int ,int,long,int ) ;
 int appendStringInfo (TYPE_2__*,char*,void*,void*,void*,void*,void*,void*) ;
 int elog (int ,char*,int ,void*,int,...) ;
 int got_sighup ;
 int got_sigterm ;
 int initStringInfo (TYPE_2__*) ;
 int initialize_worker_spi (TYPE_1__*) ;
 TYPE_1__* palloc (int) ;
 int pgstat_report_activity (int ,int *) ;
 int pgstat_report_stat (int) ;
 int pqsignal (int ,int ) ;
 int proc_exit (int) ;
 void* pstrdup (char*) ;
 void* quote_identifier (void*) ;
 int sprintf (char*,char*,int) ;
 int worker_spi_database ;
 long worker_spi_naptime ;
 int worker_spi_sighup ;
 int worker_spi_sigterm ;

void
worker_spi_main(Datum main_arg)
{
 int index = DatumGetInt32(main_arg);
 worktable *table;
 StringInfoData buf;
 char name[20];

 table = palloc(sizeof(worktable));
 sprintf(name, "schema%d", index);
 table->schema = pstrdup(name);
 table->name = pstrdup("counted");


 pqsignal(SIGHUP, worker_spi_sighup);
 pqsignal(SIGTERM, worker_spi_sigterm);


 BackgroundWorkerUnblockSignals();


 BackgroundWorkerInitializeConnection(worker_spi_database, ((void*)0), 0);

 elog(LOG, "%s initialized with %s.%s",
   MyBgworkerEntry->bgw_name, table->schema, table->name);
 initialize_worker_spi(table);
 table->schema = quote_identifier(table->schema);
 table->name = quote_identifier(table->name);

 initStringInfo(&buf);
 appendStringInfo(&buf,
      "WITH deleted AS (DELETE "
      "FROM %s.%s "
      "WHERE type = 'delta' RETURNING value), "
      "total AS (SELECT coalesce(sum(value), 0) as sum "
      "FROM deleted) "
      "UPDATE %s.%s "
      "SET value = %s.value + total.sum "
      "FROM total WHERE type = 'total' "
      "RETURNING %s.value",
      table->schema, table->name,
      table->schema, table->name,
      table->name,
      table->name);




 while (!got_sigterm)
 {
  int ret;







  (void) WaitLatch(MyLatch,
       WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
       worker_spi_naptime * 1000L,
       PG_WAIT_EXTENSION);
  ResetLatch(MyLatch);

  CHECK_FOR_INTERRUPTS();




  if (got_sighup)
  {
   got_sighup = 0;
   ProcessConfigFile(PGC_SIGHUP);
  }
  SetCurrentStatementStartTimestamp();
  StartTransactionCommand();
  SPI_connect();
  PushActiveSnapshot(GetTransactionSnapshot());
  pgstat_report_activity(STATE_RUNNING, buf.data);


  ret = SPI_execute(buf.data, 0, 0);

  if (ret != SPI_OK_UPDATE_RETURNING)
   elog(FATAL, "cannot select from table %s.%s: error code %d",
     table->schema, table->name, ret);

  if (SPI_processed > 0)
  {
   bool isnull;
   int32 val;

   val = DatumGetInt32(SPI_getbinval(SPI_tuptable->vals[0],
             SPI_tuptable->tupdesc,
             1, &isnull));
   if (!isnull)
    elog(LOG, "%s: count in %s.%s is now %d",
      MyBgworkerEntry->bgw_name,
      table->schema, table->name, val);
  }




  SPI_finish();
  PopActiveSnapshot();
  CommitTransactionCommand();
  pgstat_report_stat(0);
  pgstat_report_activity(STATE_IDLE, ((void*)0));
 }

 proc_exit(1);
}
