
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int * (* extract_nodes ) (TYPE_2__*,int ,int *,int *) ;int (* add_path_item ) (int *,TYPE_1__*) ;} ;
struct TYPE_13__ {int type; } ;
typedef int List ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonPathItem ;
typedef int JsonPathGinPath ;
typedef int JsonPathGinNode ;
typedef TYPE_2__ JsonPathGinContext ;


 int * NIL ;
 int * extract_jsp_bool_expr (TYPE_2__*,int ,TYPE_1__*,int) ;


 int jspGetArg (TYPE_1__*,TYPE_1__*) ;
 int jspGetNext (TYPE_1__*,TYPE_1__*) ;
 int * lappend (int *,int *) ;
 int stub1 (int *,TYPE_1__*) ;
 int * stub2 (TYPE_2__*,int ,int *,int *) ;

__attribute__((used)) static List *
extract_jsp_path_expr_nodes(JsonPathGinContext *cxt, JsonPathGinPath path,
       JsonPathItem *jsp, JsonbValue *scalar)
{
 JsonPathItem next;
 List *nodes = NIL;

 for (;;)
 {
  switch (jsp->type)
  {
   case 129:
    break;

   case 128:
    {
     JsonPathItem arg;
     JsonPathGinNode *filter;

     jspGetArg(jsp, &arg);

     filter = extract_jsp_bool_expr(cxt, path, &arg, 0);

     if (filter)
      nodes = lappend(nodes, filter);

     break;
    }

   default:
    if (!cxt->add_path_item(&path, jsp))





     return nodes;
    break;
  }

  if (!jspGetNext(jsp, &next))
   break;

  jsp = &next;
 }





 return cxt->extract_nodes(cxt, path, scalar, nodes);
}
