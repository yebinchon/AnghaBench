
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int inh; int relname; } ;
struct TYPE_4__ {int behavior; TYPE_3__* relation; int newname; int subname; scalar_t__ missing_ok; } ;
typedef TYPE_1__ RenameStmt ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int AttrNumber ;


 int AccessExclusiveLock ;
 int InvalidObjectAddress ;
 int NOTICE ;
 int ObjectAddressSubSet (int ,int ,int ,int ) ;
 int OidIsValid (int ) ;
 int RVR_MISSING_OK ;
 int RangeVarCallbackForRenameAttribute ;
 int RangeVarGetRelidExtended (TYPE_3__*,int ,int ,int ,int *) ;
 int RelationRelationId ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int renameatt_internal (int ,int ,int ,int ,int,int ,int ) ;

ObjectAddress
renameatt(RenameStmt *stmt)
{
 Oid relid;
 AttrNumber attnum;
 ObjectAddress address;


 relid = RangeVarGetRelidExtended(stmt->relation, AccessExclusiveLock,
          stmt->missing_ok ? RVR_MISSING_OK : 0,
          RangeVarCallbackForRenameAttribute,
          ((void*)0));

 if (!OidIsValid(relid))
 {
  ereport(NOTICE,
    (errmsg("relation \"%s\" does not exist, skipping",
      stmt->relation->relname)));
  return InvalidObjectAddress;
 }

 attnum =
  renameatt_internal(relid,
         stmt->subname,
         stmt->newname,
         stmt->relation->inh,
         0,
         0,
         stmt->behavior);

 ObjectAddressSubSet(address, RelationRelationId, relid, attnum);

 return address;
}
