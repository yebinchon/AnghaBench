
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int relname; } ;
struct TYPE_4__ {scalar_t__ renameType; int newname; TYPE_3__* relation; scalar_t__ missing_ok; } ;
typedef TYPE_1__ RenameStmt ;
typedef int Oid ;
typedef int ObjectAddress ;


 int AccessExclusiveLock ;
 int InvalidObjectAddress ;
 int NOTICE ;
 scalar_t__ OBJECT_INDEX ;
 int ObjectAddressSet (int ,int ,int ) ;
 int OidIsValid (int ) ;
 int RVR_MISSING_OK ;
 int RangeVarCallbackForAlterRelation ;
 int RangeVarGetRelidExtended (TYPE_3__*,int ,int ,int ,void*) ;
 int RelationRelationId ;
 int RenameRelationInternal (int ,int ,int,int) ;
 int ShareUpdateExclusiveLock ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;

ObjectAddress
RenameRelation(RenameStmt *stmt)
{
 bool is_index = stmt->renameType == OBJECT_INDEX;
 Oid relid;
 ObjectAddress address;
 relid = RangeVarGetRelidExtended(stmt->relation,
          is_index ? ShareUpdateExclusiveLock : AccessExclusiveLock,
          stmt->missing_ok ? RVR_MISSING_OK : 0,
          RangeVarCallbackForAlterRelation,
          (void *) stmt);

 if (!OidIsValid(relid))
 {
  ereport(NOTICE,
    (errmsg("relation \"%s\" does not exist, skipping",
      stmt->relation->relname)));
  return InvalidObjectAddress;
 }


 RenameRelationInternal(relid, stmt->newname, 0, is_index);

 ObjectAddressSet(address, RelationRelationId, relid);

 return address;
}
