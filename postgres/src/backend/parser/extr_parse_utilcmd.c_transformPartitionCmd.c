
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int pstate; int partbound; TYPE_2__* rel; } ;
struct TYPE_12__ {int * bound; } ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_10__ {int relkind; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ PartitionCmd ;
typedef TYPE_4__ CreateStmtContext ;


 int Assert (int ) ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;




 int * RelationGetPartitionKey (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int transformPartitionBound (int ,TYPE_2__*,int *) ;

__attribute__((used)) static void
transformPartitionCmd(CreateStmtContext *cxt, PartitionCmd *cmd)
{
 Relation parentRel = cxt->rel;

 switch (parentRel->rd_rel->relkind)
 {
  case 129:

   Assert(RelationGetPartitionKey(parentRel) != ((void*)0));
   if (cmd->bound != ((void*)0))
    cxt->partbound = transformPartitionBound(cxt->pstate, parentRel,
               cmd->bound);
   break;
  case 130:

   Assert(cmd->bound == ((void*)0));
   break;
  case 128:

   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("table \"%s\" is not partitioned",
       RelationGetRelationName(parentRel))));
   break;
  case 131:

   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("index \"%s\" is not partitioned",
       RelationGetRelationName(parentRel))));
   break;
  default:

   elog(ERROR, "\"%s\" is not a partitioned table or index",
     RelationGetRelationName(parentRel));
   break;
 }
}
