
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ lax; } ;
struct TYPE_11__ {TYPE_2__* items; } ;
struct TYPE_10__ {scalar_t__ type; int keyName; struct TYPE_10__* parent; } ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef int List ;
typedef TYPE_1__ JsonbValue ;
typedef TYPE_2__ JsonPathGinPathItem ;
typedef TYPE_3__ JsonPathGinPath ;
typedef int JsonPathGinNode ;
typedef TYPE_4__ JsonPathGinContext ;
typedef scalar_t__ GinTernaryValue ;


 scalar_t__ GIN_FALSE ;
 scalar_t__ GIN_MAYBE ;
 scalar_t__ GIN_TRUE ;
 int JSP_GIN_OR ;
 scalar_t__ jbvString ;
 scalar_t__ jpiAny ;
 scalar_t__ jpiAnyArray ;
 scalar_t__ jpiIndexArray ;
 scalar_t__ jpiKey ;
 int * lappend (int *,int *) ;
 int * make_jsp_entry_node (int ) ;
 int * make_jsp_entry_node_scalar (TYPE_1__*,int) ;
 int * make_jsp_expr_node_binary (int ,int *,int *) ;

__attribute__((used)) static List *
jsonb_ops__extract_nodes(JsonPathGinContext *cxt, JsonPathGinPath path,
       JsonbValue *scalar, List *nodes)
{
 JsonPathGinPathItem *pentry;

 if (scalar)
 {
  JsonPathGinNode *node;





  for (pentry = path.items; pentry; pentry = pentry->parent)
  {
   if (pentry->type == jpiKey)
    nodes = lappend(nodes, make_jsp_entry_node(pentry->keyName));
  }


  if (scalar->type == jbvString)
  {
   JsonPathGinPathItem *last = path.items;
   GinTernaryValue key_entry;
   if (cxt->lax)
    key_entry = GIN_MAYBE;
   else if (!last)
    key_entry = GIN_FALSE;
   else if (last->type == jpiAnyArray || last->type == jpiIndexArray)
    key_entry = GIN_TRUE;
   else if (last->type == jpiAny)
    key_entry = GIN_MAYBE;
   else
    key_entry = GIN_FALSE;

   if (key_entry == GIN_MAYBE)
   {
    JsonPathGinNode *n1 = make_jsp_entry_node_scalar(scalar, 1);
    JsonPathGinNode *n2 = make_jsp_entry_node_scalar(scalar, 0);

    node = make_jsp_expr_node_binary(JSP_GIN_OR, n1, n2);
   }
   else
   {
    node = make_jsp_entry_node_scalar(scalar,
              key_entry == GIN_TRUE);
   }
  }
  else
  {
   node = make_jsp_entry_node_scalar(scalar, 0);
  }

  nodes = lappend(nodes, node);
 }

 return nodes;
}
