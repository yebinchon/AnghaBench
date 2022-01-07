
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int trig_delete_instead_row; int trig_update_instead_row; int trig_insert_instead_row; } ;
typedef TYPE_2__ TriggerDesc ;
struct TYPE_16__ {int (* IsForeignRelUpdatable ) (TYPE_4__*) ;int * ExecForeignDelete; int * ExecForeignUpdate; int * ExecForeignInsert; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; TYPE_2__* trigdesc; } ;
struct TYPE_14__ {TYPE_5__* ri_FdwRoutine; TYPE_4__* ri_RelationDesc; } ;
struct TYPE_12__ {int relkind; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef TYPE_4__* Relation ;
typedef TYPE_5__ FdwRoutine ;
typedef scalar_t__ CmdType ;





 int CheckCmdReplicaIdentity (TYPE_4__*,scalar_t__) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int MatViewIncrementalMaintenanceIsEnabled () ;







 int RelationGetRelationName (TYPE_4__*) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;

void
CheckValidResultRel(ResultRelInfo *resultRelInfo, CmdType operation)
{
 Relation resultRel = resultRelInfo->ri_RelationDesc;
 TriggerDesc *trigDesc = resultRel->trigdesc;
 FdwRoutine *fdwroutine;

 switch (resultRel->rd_rel->relkind)
 {
  case 131:
  case 132:
   CheckCmdReplicaIdentity(resultRel, operation);
   break;
  case 130:
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot change sequence \"%s\"",
       RelationGetRelationName(resultRel))));
   break;
  case 129:
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot change TOAST relation \"%s\"",
       RelationGetRelationName(resultRel))));
   break;
  case 128:
   switch (operation)
   {
    case 136:
     if (!trigDesc || !trigDesc->trig_insert_instead_row)
      ereport(ERROR,
        (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
         errmsg("cannot insert into view \"%s\"",
          RelationGetRelationName(resultRel)),
         errhint("To enable inserting into the view, provide an INSTEAD OF INSERT trigger or an unconditional ON INSERT DO INSTEAD rule.")));
     break;
    case 135:
     if (!trigDesc || !trigDesc->trig_update_instead_row)
      ereport(ERROR,
        (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
         errmsg("cannot update view \"%s\"",
          RelationGetRelationName(resultRel)),
         errhint("To enable updating the view, provide an INSTEAD OF UPDATE trigger or an unconditional ON UPDATE DO INSTEAD rule.")));
     break;
    case 137:
     if (!trigDesc || !trigDesc->trig_delete_instead_row)
      ereport(ERROR,
        (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
         errmsg("cannot delete from view \"%s\"",
          RelationGetRelationName(resultRel)),
         errhint("To enable deleting from the view, provide an INSTEAD OF DELETE trigger or an unconditional ON DELETE DO INSTEAD rule.")));
     break;
    default:
     elog(ERROR, "unrecognized CmdType: %d", (int) operation);
     break;
   }
   break;
  case 133:
   if (!MatViewIncrementalMaintenanceIsEnabled())
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("cannot change materialized view \"%s\"",
        RelationGetRelationName(resultRel))));
   break;
  case 134:

   fdwroutine = resultRelInfo->ri_FdwRoutine;
   switch (operation)
   {
    case 136:
     if (fdwroutine->ExecForeignInsert == ((void*)0))
      ereport(ERROR,
        (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
         errmsg("cannot insert into foreign table \"%s\"",
          RelationGetRelationName(resultRel))));
     if (fdwroutine->IsForeignRelUpdatable != ((void*)0) &&
      (fdwroutine->IsForeignRelUpdatable(resultRel) & (1 << 136)) == 0)
      ereport(ERROR,
        (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
         errmsg("foreign table \"%s\" does not allow inserts",
          RelationGetRelationName(resultRel))));
     break;
    case 135:
     if (fdwroutine->ExecForeignUpdate == ((void*)0))
      ereport(ERROR,
        (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
         errmsg("cannot update foreign table \"%s\"",
          RelationGetRelationName(resultRel))));
     if (fdwroutine->IsForeignRelUpdatable != ((void*)0) &&
      (fdwroutine->IsForeignRelUpdatable(resultRel) & (1 << 135)) == 0)
      ereport(ERROR,
        (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
         errmsg("foreign table \"%s\" does not allow updates",
          RelationGetRelationName(resultRel))));
     break;
    case 137:
     if (fdwroutine->ExecForeignDelete == ((void*)0))
      ereport(ERROR,
        (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
         errmsg("cannot delete from foreign table \"%s\"",
          RelationGetRelationName(resultRel))));
     if (fdwroutine->IsForeignRelUpdatable != ((void*)0) &&
      (fdwroutine->IsForeignRelUpdatable(resultRel) & (1 << 137)) == 0)
      ereport(ERROR,
        (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
         errmsg("foreign table \"%s\" does not allow deletes",
          RelationGetRelationName(resultRel))));
     break;
    default:
     elog(ERROR, "unrecognized CmdType: %d", (int) operation);
     break;
   }
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot change relation \"%s\"",
       RelationGetRelationName(resultRel))));
   break;
 }
}
