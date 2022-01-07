
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pathtarget; TYPE_1__* param_info; TYPE_2__* parent; } ;
struct TYPE_6__ {scalar_t__ reltarget; int * relids; } ;
struct TYPE_5__ {int * ppi_req_outer; } ;
typedef int StringInfo ;
typedef TYPE_3__ Path ;


 int NodeTag ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int appendStringInfoString (int ,char*) ;
 int outBitmapset (int ,int *) ;
 int parallel_aware ;
 int parallel_safe ;
 int parallel_workers ;
 int pathkeys ;
 int pathtarget ;
 int pathtype ;
 int rows ;
 int startup_cost ;
 int total_cost ;

__attribute__((used)) static void
_outPathInfo(StringInfo str, const Path *node)
{
 WRITE_ENUM_FIELD(pathtype, NodeTag);
 appendStringInfoString(str, " :parent_relids ");
 outBitmapset(str, node->parent->relids);
 if (node->pathtarget != node->parent->reltarget)
  WRITE_NODE_FIELD(pathtarget);
 appendStringInfoString(str, " :required_outer ");
 if (node->param_info)
  outBitmapset(str, node->param_info->ppi_req_outer);
 else
  outBitmapset(str, ((void*)0));
 WRITE_BOOL_FIELD(parallel_aware);
 WRITE_BOOL_FIELD(parallel_safe);
 WRITE_INT_FIELD(parallel_workers);
 WRITE_FLOAT_FIELD(rows, "%.0f");
 WRITE_FLOAT_FIELD(startup_cost, "%.2f");
 WRITE_FLOAT_FIELD(total_cost, "%.2f");
 WRITE_NODE_FIELD(pathkeys);
}
