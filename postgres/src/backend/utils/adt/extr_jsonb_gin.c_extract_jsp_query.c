
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_15__ {int count; int * buf; int member_0; } ;
struct TYPE_14__ {int header; } ;
struct TYPE_13__ {int lax; int extract_nodes; int add_path_item; } ;
struct TYPE_12__ {int member_0; } ;
typedef scalar_t__ StrategyNumber ;
typedef scalar_t__ Pointer ;
typedef int JsonPathItem ;
typedef TYPE_1__ JsonPathGinPath ;
typedef int JsonPathGinNode ;
typedef TYPE_2__ JsonPathGinContext ;
typedef TYPE_3__ JsonPath ;
typedef TYPE_4__ GinEntries ;
typedef int Datum ;


 int JSONPATH_LAX ;
 scalar_t__ JsonbJsonpathExistsStrategyNumber ;
 int emit_jsp_gin_entries (int *,TYPE_4__*) ;
 int * extract_jsp_bool_expr (TYPE_2__*,TYPE_1__,int *,int) ;
 int * extract_jsp_path_expr (TYPE_2__*,TYPE_1__,int *,int *) ;
 int jsonb_ops__add_path_item ;
 int jsonb_ops__extract_nodes ;
 int jsonb_path_ops__add_path_item ;
 int jsonb_path_ops__extract_nodes ;
 int jspInit (int *,TYPE_3__*) ;
 scalar_t__* palloc0 (int) ;

__attribute__((used)) static Datum *
extract_jsp_query(JsonPath *jp, StrategyNumber strat, bool pathOps,
      int32 *nentries, Pointer **extra_data)
{
 JsonPathGinContext cxt;
 JsonPathItem root;
 JsonPathGinNode *node;
 JsonPathGinPath path = {0};
 GinEntries entries = {0};

 cxt.lax = (jp->header & JSONPATH_LAX) != 0;

 if (pathOps)
 {
  cxt.add_path_item = jsonb_path_ops__add_path_item;
  cxt.extract_nodes = jsonb_path_ops__extract_nodes;
 }
 else
 {
  cxt.add_path_item = jsonb_ops__add_path_item;
  cxt.extract_nodes = jsonb_ops__extract_nodes;
 }

 jspInit(&root, jp);

 node = strat == JsonbJsonpathExistsStrategyNumber
  ? extract_jsp_path_expr(&cxt, path, &root, ((void*)0))
  : extract_jsp_bool_expr(&cxt, path, &root, 0);

 if (!node)
 {
  *nentries = 0;
  return ((void*)0);
 }

 emit_jsp_gin_entries(node, &entries);

 *nentries = entries.count;
 if (!*nentries)
  return ((void*)0);

 *extra_data = palloc0(sizeof(**extra_data) * entries.count);
 **extra_data = (Pointer) node;

 return entries.buf;
}
