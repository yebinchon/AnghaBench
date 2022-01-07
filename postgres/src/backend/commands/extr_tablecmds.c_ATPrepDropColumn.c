
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int subtype; } ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {scalar_t__ relkind; scalar_t__ reloftype; } ;
typedef TYPE_2__* Relation ;
typedef int List ;
typedef int LOCKMODE ;
typedef TYPE_3__ AlterTableCmd ;


 int ATTypedTableRecursion (int **,TYPE_2__*,TYPE_3__*,int ) ;
 int AT_DropColumnRecurse ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
ATPrepDropColumn(List **wqueue, Relation rel, bool recurse, bool recursing,
     AlterTableCmd *cmd, LOCKMODE lockmode)
{
 if (rel->rd_rel->reloftype && !recursing)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot drop column from typed table")));

 if (rel->rd_rel->relkind == RELKIND_COMPOSITE_TYPE)
  ATTypedTableRecursion(wqueue, rel, cmd, lockmode);

 if (recurse)
  cmd->subtype = AT_DropColumnRecurse;
}
