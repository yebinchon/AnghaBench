
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pname ;
struct TYPE_12__ {int ns; } ;
struct TYPE_11__ {int itemno; } ;
struct TYPE_10__ {int number; int location; } ;
struct TYPE_9__ {scalar_t__ p_ref_hook_state; } ;
typedef TYPE_1__ ParseState ;
typedef TYPE_2__ ParamRef ;
typedef TYPE_3__ PLpgSQL_nsitem ;
typedef TYPE_4__ PLpgSQL_expr ;
typedef int Node ;


 int * make_datum_param (TYPE_4__*,int ,int ) ;
 TYPE_3__* plpgsql_ns_lookup (int ,int,char*,int *,int *,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static Node *
plpgsql_param_ref(ParseState *pstate, ParamRef *pref)
{
 PLpgSQL_expr *expr = (PLpgSQL_expr *) pstate->p_ref_hook_state;
 char pname[32];
 PLpgSQL_nsitem *nse;

 snprintf(pname, sizeof(pname), "$%d", pref->number);

 nse = plpgsql_ns_lookup(expr->ns, 0,
       pname, ((void*)0), ((void*)0),
       ((void*)0));

 if (nse == ((void*)0))
  return ((void*)0);

 return make_datum_param(expr, nse->itemno, pref->location);
}
