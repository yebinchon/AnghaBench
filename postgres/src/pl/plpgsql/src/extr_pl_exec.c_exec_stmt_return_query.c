
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef scalar_t__ uint64 ;
typedef int TupleConversionMap ;
struct TYPE_21__ {scalar_t__ eval_processed; int * tuple_store; int tuple_store_desc; int retisset; } ;
struct TYPE_20__ {int params; int * dynquery; int * query; } ;
struct TYPE_19__ {int tupDesc; } ;
struct TYPE_18__ {int * vals; } ;
typedef TYPE_1__* Portal ;
typedef TYPE_2__ PLpgSQL_stmt_return_query ;
typedef TYPE_3__ PLpgSQL_execstate ;
typedef int MemoryContext ;
typedef int HeapTuple ;


 int Assert (int ) ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int PLPGSQL_RC_OK ;
 int SPI_cursor_close (TYPE_1__*) ;
 int SPI_cursor_fetch (TYPE_1__*,int,int) ;
 int SPI_freetuptable (TYPE_14__*) ;
 scalar_t__ SPI_processed ;
 TYPE_14__* SPI_tuptable ;
 int * convert_tuples_by_position (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_1__* exec_dynquery_with_params (TYPE_3__*,int *,int ,int *,int ) ;
 int exec_eval_cleanup (TYPE_3__*) ;
 int exec_init_tuple_store (TYPE_3__*) ;
 int exec_run_select (TYPE_3__*,int *,int ,TYPE_1__**) ;
 int exec_set_found (TYPE_3__*,int) ;
 int execute_attr_map_tuple (int ,int *) ;
 int get_eval_mcontext (TYPE_3__*) ;
 int gettext_noop (char*) ;
 int heap_freetuple (int ) ;
 int tuplestore_puttuple (int *,int ) ;

__attribute__((used)) static int
exec_stmt_return_query(PLpgSQL_execstate *estate,
        PLpgSQL_stmt_return_query *stmt)
{
 Portal portal;
 uint64 processed = 0;
 TupleConversionMap *tupmap;
 MemoryContext oldcontext;

 if (!estate->retisset)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("cannot use RETURN QUERY in a non-SETOF function")));

 if (estate->tuple_store == ((void*)0))
  exec_init_tuple_store(estate);

 if (stmt->query != ((void*)0))
 {

  exec_run_select(estate, stmt->query, 0, &portal);
 }
 else
 {

  Assert(stmt->dynquery != ((void*)0));
  portal = exec_dynquery_with_params(estate, stmt->dynquery,
             stmt->params, ((void*)0),
             0);
 }


 oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));

 tupmap = convert_tuples_by_position(portal->tupDesc,
          estate->tuple_store_desc,
          gettext_noop("structure of query does not match function result type"));

 while (1)
 {
  uint64 i;

  SPI_cursor_fetch(portal, 1, 50);


  MemoryContextSwitchTo(get_eval_mcontext(estate));

  if (SPI_processed == 0)
   break;

  for (i = 0; i < SPI_processed; i++)
  {
   HeapTuple tuple = SPI_tuptable->vals[i];

   if (tupmap)
    tuple = execute_attr_map_tuple(tuple, tupmap);
   tuplestore_puttuple(estate->tuple_store, tuple);
   if (tupmap)
    heap_freetuple(tuple);
   processed++;
  }

  SPI_freetuptable(SPI_tuptable);
 }

 SPI_freetuptable(SPI_tuptable);
 SPI_cursor_close(portal);

 MemoryContextSwitchTo(oldcontext);
 exec_eval_cleanup(estate);

 estate->eval_processed = processed;
 exec_set_found(estate, processed != 0);

 return PLPGSQL_RC_OK;
}
