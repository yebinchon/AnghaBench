
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_19__ {scalar_t__ eval_processed; scalar_t__* datums; } ;
struct TYPE_18__ {long how_many; size_t curvar; int direction; TYPE_1__* target; int is_move; scalar_t__ expr; } ;
struct TYPE_17__ {int value; int refname; scalar_t__ isnull; } ;
struct TYPE_16__ {int tupdesc; int ** vals; } ;
struct TYPE_15__ {size_t dno; } ;
typedef TYPE_2__ SPITupleTable ;
typedef int * Portal ;
typedef int PLpgSQL_variable ;
typedef TYPE_3__ PLpgSQL_var ;
typedef TYPE_4__ PLpgSQL_stmt_fetch ;
typedef TYPE_5__ PLpgSQL_execstate ;
typedef int MemoryContext ;


 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERRCODE_UNDEFINED_CURSOR ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int PLPGSQL_RC_OK ;
 int * SPI_cursor_find (char*) ;
 int SPI_freetuptable (TYPE_2__*) ;
 scalar_t__ SPI_processed ;
 int SPI_scroll_cursor_fetch (int *,int ,long) ;
 int SPI_scroll_cursor_move (int *,int ,long) ;
 TYPE_2__* SPI_tuptable ;
 char* TextDatumGetCString (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int exec_eval_cleanup (TYPE_5__*) ;
 long exec_eval_integer (TYPE_5__*,scalar_t__,int*) ;
 int exec_move_row (TYPE_5__*,int *,int *,int ) ;
 int exec_set_found (TYPE_5__*,int) ;
 int get_eval_mcontext (TYPE_5__*) ;

__attribute__((used)) static int
exec_stmt_fetch(PLpgSQL_execstate *estate, PLpgSQL_stmt_fetch *stmt)
{
 PLpgSQL_var *curvar;
 long how_many = stmt->how_many;
 SPITupleTable *tuptab;
 Portal portal;
 char *curname;
 uint64 n;
 MemoryContext oldcontext;





 curvar = (PLpgSQL_var *) (estate->datums[stmt->curvar]);
 if (curvar->isnull)
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("cursor variable \"%s\" is null", curvar->refname)));


 oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));
 curname = TextDatumGetCString(curvar->value);
 MemoryContextSwitchTo(oldcontext);

 portal = SPI_cursor_find(curname);
 if (portal == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_CURSOR),
     errmsg("cursor \"%s\" does not exist", curname)));


 if (stmt->expr)
 {
  bool isnull;


  how_many = exec_eval_integer(estate, stmt->expr, &isnull);

  if (isnull)
   ereport(ERROR,
     (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
      errmsg("relative or absolute cursor position is null")));

  exec_eval_cleanup(estate);
 }

 if (!stmt->is_move)
 {
  PLpgSQL_variable *target;





  SPI_scroll_cursor_fetch(portal, stmt->direction, how_many);
  tuptab = SPI_tuptable;
  n = SPI_processed;





  target = (PLpgSQL_variable *) estate->datums[stmt->target->dno];
  if (n == 0)
   exec_move_row(estate, target, ((void*)0), tuptab->tupdesc);
  else
   exec_move_row(estate, target, tuptab->vals[0], tuptab->tupdesc);

  exec_eval_cleanup(estate);
  SPI_freetuptable(tuptab);
 }
 else
 {

  SPI_scroll_cursor_move(portal, stmt->direction, how_many);
  n = SPI_processed;
 }


 estate->eval_processed = n;
 exec_set_found(estate, n != 0);

 return PLPGSQL_RC_OK;
}
