
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__* datums; } ;
struct TYPE_8__ {size_t curvar; } ;
struct TYPE_7__ {char* refname; int value; scalar_t__ isnull; } ;
typedef int * Portal ;
typedef TYPE_1__ PLpgSQL_var ;
typedef TYPE_2__ PLpgSQL_stmt_close ;
typedef TYPE_3__ PLpgSQL_execstate ;
typedef int MemoryContext ;


 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERRCODE_UNDEFINED_CURSOR ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int PLPGSQL_RC_OK ;
 int SPI_cursor_close (int *) ;
 int * SPI_cursor_find (char*) ;
 char* TextDatumGetCString (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int get_eval_mcontext (TYPE_3__*) ;

__attribute__((used)) static int
exec_stmt_close(PLpgSQL_execstate *estate, PLpgSQL_stmt_close *stmt)
{
 PLpgSQL_var *curvar;
 Portal portal;
 char *curname;
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





 SPI_cursor_close(portal);

 return PLPGSQL_RC_OK;
}
