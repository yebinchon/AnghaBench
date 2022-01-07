
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_19__ {int * connection; } ;
struct TYPE_18__ {TYPE_1__* head; } ;
struct TYPE_17__ {char* val; struct TYPE_17__* next; } ;
typedef TYPE_1__ SimpleStringListCell ;
typedef TYPE_2__ SimpleStringList ;
typedef int ReindexType ;
typedef TYPE_3__ ParallelSlot ;
typedef int PGconn ;


 int Assert (int) ;
 scalar_t__ CancelRequested ;
 int Min (int,int) ;
 char const* PQdb (int *) ;
 int PQfinish (int *) ;
 int PQserverVersion (int *) ;
 TYPE_3__* ParallelSlotsGetIdle (TYPE_3__*,int) ;
 TYPE_3__* ParallelSlotsSetup (char const*,char const*,char const*,char const*,int,char const*,int,int *,int) ;
 int ParallelSlotsTerminate (TYPE_3__*,int) ;
 int ParallelSlotsWaitCompletion (TYPE_3__*,int) ;





 int * connectDatabase (char const*,char const*,char const*,char const*,int,char const*,int,int,int) ;
 int exit (int) ;
 TYPE_2__* get_parallel_object_list (int *,int,TYPE_2__*,int) ;
 int pfree (TYPE_3__*) ;
 int pg_free (TYPE_2__*) ;
 int pg_log_error (char*,char*,char*) ;
 int pg_log_warning (char*) ;
 TYPE_2__* pg_malloc0 (int) ;
 int run_reindex_command (int *,int const,char const*,int,int,int,int) ;
 int simple_string_list_append (TYPE_2__*,char const*) ;
 int simple_string_list_destroy (TYPE_2__*) ;

__attribute__((used)) static void
reindex_one_database(const char *dbname, ReindexType type,
      SimpleStringList *user_list, const char *host,
      const char *port, const char *username,
      enum trivalue prompt_password, const char *progname, bool echo,
      bool verbose, bool concurrently, int concurrentCons)
{
 PGconn *conn;
 SimpleStringListCell *cell;
 bool parallel = concurrentCons > 1;
 SimpleStringList *process_list = user_list;
 ReindexType process_type = type;
 ParallelSlot *slots;
 bool failed = 0;
 int items_count = 0;

 conn = connectDatabase(dbname, host, port, username, prompt_password,
         progname, echo, 0, 0);

 if (concurrently && PQserverVersion(conn) < 120000)
 {
  PQfinish(conn);
  pg_log_error("cannot use the \"%s\" option on server versions older than PostgreSQL %s",
      "concurrently", "12");
  exit(1);
 }

 if (!parallel)
 {
  switch (process_type)
  {
   case 132:
   case 129:





    Assert(user_list == ((void*)0));
    process_list = pg_malloc0(sizeof(SimpleStringList));
    simple_string_list_append(process_list, PQdb(conn));
    break;

   case 131:
   case 130:
   case 128:
    Assert(user_list != ((void*)0));
    break;
  }
 }
 else
 {
  switch (process_type)
  {
   case 132:






    if (concurrently)
     pg_log_warning("cannot reindex system catalogs concurrently, skipping all");
    else
     run_reindex_command(conn, 129, PQdb(conn), echo,
          verbose, concurrently, 0);


    process_list = get_parallel_object_list(conn, process_type,
              user_list, echo);
    process_type = 128;


    if (process_list == ((void*)0))
     return;
    break;

   case 130:
    Assert(user_list != ((void*)0));


    process_list = get_parallel_object_list(conn, process_type,
              user_list, echo);
    process_type = 128;


    if (process_list == ((void*)0))
     return;
    break;

   case 129:
   case 131:

    Assert(0);
    break;

   case 128:





    break;
  }
 }






 for (cell = process_list->head; cell; cell = cell->next)
 {
  items_count++;


  if (items_count >= concurrentCons)
   break;
 }
 concurrentCons = Min(concurrentCons, items_count);
 Assert(concurrentCons > 0);

 Assert(process_list != ((void*)0));

 slots = ParallelSlotsSetup(dbname, host, port, username, prompt_password,
          progname, echo, conn, concurrentCons);

 cell = process_list->head;
 do
 {
  const char *objname = cell->val;
  ParallelSlot *free_slot = ((void*)0);

  if (CancelRequested)
  {
   failed = 1;
   goto finish;
  }

  free_slot = ParallelSlotsGetIdle(slots, concurrentCons);
  if (!free_slot)
  {
   failed = 1;
   goto finish;
  }

  run_reindex_command(free_slot->connection, process_type, objname,
       echo, verbose, concurrently, 1);

  cell = cell->next;
 } while (cell != ((void*)0));

 if (!ParallelSlotsWaitCompletion(slots, concurrentCons))
  failed = 1;

finish:
 if (process_list != user_list)
 {
  simple_string_list_destroy(process_list);
  pg_free(process_list);
 }

 ParallelSlotsTerminate(slots, concurrentCons);
 pfree(slots);

 if (failed)
  exit(1);
}
