
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int subscript; } ;
struct TYPE_10__ {int dtype; } ;
struct TYPE_9__ {scalar_t__ use_count; int ndatums; int * fn_cxt; int * action; TYPE_4__** datums; } ;
struct TYPE_8__ {int default_val; } ;
struct TYPE_7__ {int cursor_explicit_expr; int default_val; } ;
typedef TYPE_1__ PLpgSQL_var ;
typedef TYPE_2__ PLpgSQL_rec ;
typedef TYPE_3__ PLpgSQL_function ;
typedef TYPE_4__ PLpgSQL_datum ;
typedef TYPE_5__ PLpgSQL_arrayelem ;


 int Assert (int) ;
 int ERROR ;
 int MemoryContextDelete (int *) ;






 int elog (int ,char*,int) ;
 int free_block (int *) ;
 int free_expr (int ) ;

void
plpgsql_free_function_memory(PLpgSQL_function *func)
{
 int i;


 Assert(func->use_count == 0);


 for (i = 0; i < func->ndatums; i++)
 {
  PLpgSQL_datum *d = func->datums[i];

  switch (d->dtype)
  {
   case 128:
   case 132:
    {
     PLpgSQL_var *var = (PLpgSQL_var *) d;

     free_expr(var->default_val);
     free_expr(var->cursor_explicit_expr);
    }
    break;
   case 129:
    break;
   case 131:
    {
     PLpgSQL_rec *rec = (PLpgSQL_rec *) d;

     free_expr(rec->default_val);
    }
    break;
   case 130:
    break;
   case 133:
    free_expr(((PLpgSQL_arrayelem *) d)->subscript);
    break;
   default:
    elog(ERROR, "unrecognized data type: %d", d->dtype);
  }
 }
 func->ndatums = 0;


 if (func->action)
  free_block(func->action);
 func->action = ((void*)0);






 if (func->fn_cxt)
  MemoryContextDelete(func->fn_cxt);
 func->fn_cxt = ((void*)0);
}
