
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int relname; } ;
struct TYPE_15__ {int trigdesc; TYPE_1__* rd_rel; int rd_islocaltemp; } ;
struct TYPE_14__ {scalar_t__ relpersistence; scalar_t__ relkind; scalar_t__ relispartition; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ RangeVar ;
typedef int ObjectAddress ;
typedef int List ;
typedef int LOCKMODE ;


 int ATSimplePermissions (TYPE_2__*,int) ;
 int ATT_FOREIGN_TABLE ;
 int ATT_TABLE ;
 int AccessShareLock ;
 int CreateInheritance (TYPE_2__*,TYPE_2__*) ;
 int ERRCODE_DUPLICATE_TABLE ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 char* FindTriggerIncompatibleWithInheritance (int ) ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,int ) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELPERSISTENCE_TEMP ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int RelationRelationId ;
 int ShareUpdateExclusiveLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*,...) ;
 int * find_all_inheritors (int ,int ,int *) ;
 scalar_t__ list_member_oid (int *,int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_openrv (TYPE_3__*,int ) ;

__attribute__((used)) static ObjectAddress
ATExecAddInherit(Relation child_rel, RangeVar *parent, LOCKMODE lockmode)
{
 Relation parent_rel;
 List *children;
 ObjectAddress address;
 const char *trigger_name;





 parent_rel = table_openrv(parent, ShareUpdateExclusiveLock);





 ATSimplePermissions(parent_rel, ATT_TABLE | ATT_FOREIGN_TABLE);


 if (parent_rel->rd_rel->relpersistence == RELPERSISTENCE_TEMP &&
  child_rel->rd_rel->relpersistence != RELPERSISTENCE_TEMP)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot inherit from temporary relation \"%s\"",
      RelationGetRelationName(parent_rel))));


 if (parent_rel->rd_rel->relpersistence == RELPERSISTENCE_TEMP &&
  !parent_rel->rd_islocaltemp)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot inherit from temporary relation of another session")));


 if (child_rel->rd_rel->relpersistence == RELPERSISTENCE_TEMP &&
  !child_rel->rd_islocaltemp)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot inherit to temporary relation of another session")));


 if (parent_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot inherit from partitioned table \"%s\"",
      parent->relname)));


 if (parent_rel->rd_rel->relispartition)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot inherit from a partition")));
 children = find_all_inheritors(RelationGetRelid(child_rel),
           AccessShareLock, ((void*)0));

 if (list_member_oid(children, RelationGetRelid(parent_rel)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_TABLE),
     errmsg("circular inheritance not allowed"),
     errdetail("\"%s\" is already a child of \"%s\".",
         parent->relname,
         RelationGetRelationName(child_rel))));






 trigger_name = FindTriggerIncompatibleWithInheritance(child_rel->trigdesc);
 if (trigger_name != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("trigger \"%s\" prevents table \"%s\" from becoming an inheritance child",
      trigger_name, RelationGetRelationName(child_rel)),
     errdetail("ROW triggers with transition tables are not supported in inheritance hierarchies.")));


 CreateInheritance(child_rel, parent_rel);

 ObjectAddressSet(address, RelationRelationId,
      RelationGetRelid(parent_rel));


 table_close(parent_rel, NoLock);

 return address;
}
