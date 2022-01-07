
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int hash; } ;
typedef int List ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonPathGinPath ;
typedef int JsonPathGinContext ;


 int JsonbHashScalarValue (int *,int *) ;
 int UInt32GetDatum (int ) ;
 int * lappend (int *,int ) ;
 int make_jsp_entry_node (int ) ;

__attribute__((used)) static List *
jsonb_path_ops__extract_nodes(JsonPathGinContext *cxt, JsonPathGinPath path,
         JsonbValue *scalar, List *nodes)
{
 if (scalar)
 {

  uint32 hash = path.hash;

  JsonbHashScalarValue(scalar, &hash);

  return lappend(nodes,
        make_jsp_entry_node(UInt32GetDatum(hash)));
 }
 else
 {

  return nodes;
 }
}
