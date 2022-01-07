
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int per_tuple; int startup; } ;
struct TYPE_4__ {int * sortgrouprefs; int exprs; } ;
typedef int StringInfo ;
typedef TYPE_1__ PathTarget ;


 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;
 TYPE_2__ cost ;
 int exprs ;
 int list_length (int ) ;
 int width ;

__attribute__((used)) static void
_outPathTarget(StringInfo str, const PathTarget *node)
{
 WRITE_NODE_TYPE("PATHTARGET");

 WRITE_NODE_FIELD(exprs);
 if (node->sortgrouprefs)
 {
  int i;

  appendStringInfoString(str, " :sortgrouprefs");
  for (i = 0; i < list_length(node->exprs); i++)
   appendStringInfo(str, " %u", node->sortgrouprefs[i]);
 }
 WRITE_FLOAT_FIELD(cost.startup, "%.2f");
 WRITE_FLOAT_FIELD(cost.per_tuple, "%.2f");
 WRITE_INT_FIELD(width);
}
