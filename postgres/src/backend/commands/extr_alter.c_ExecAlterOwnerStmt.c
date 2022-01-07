
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int Value ;
struct TYPE_16__ {int objectType; scalar_t__ object; int newowner; } ;
struct TYPE_15__ {int objectId; int classId; } ;
typedef int * Relation ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__ AlterOwnerStmt ;


 int AccessExclusiveLock ;
 TYPE_1__ AlterDatabaseOwner (int ,int ) ;
 TYPE_1__ AlterEventTriggerOwner (int ,int ) ;
 TYPE_1__ AlterForeignDataWrapperOwner (int ,int ) ;
 TYPE_1__ AlterForeignServerOwner (int ,int ) ;
 int AlterObjectOwner_internal (int *,int ,int ) ;
 TYPE_1__ AlterPublicationOwner (int ,int ) ;
 TYPE_1__ AlterSchemaOwner (int ,int ) ;
 TYPE_1__ AlterSubscriptionOwner (int ,int ) ;
 TYPE_1__ AlterTypeOwner (int ,int ,int) ;
 int Assert (int ) ;
 int ERROR ;
 TYPE_1__ InvalidObjectAddress ;
 int LargeObjectMetadataRelationId ;
 int LargeObjectRelationId ;
 int List ;
 int RowExclusiveLock ;
 int castNode (int ,scalar_t__) ;
 int elog (int ,char*,int) ;
 TYPE_1__ get_object_address (int,scalar_t__,int **,int ,int) ;
 int get_rolespec_oid (int ,int) ;
 int strVal (int *) ;
 int table_close (int *,int ) ;
 int * table_open (int ,int ) ;

ObjectAddress
ExecAlterOwnerStmt(AlterOwnerStmt *stmt)
{
 Oid newowner = get_rolespec_oid(stmt->newowner, 0);

 switch (stmt->objectType)
 {
  case 148:
   return AlterDatabaseOwner(strVal((Value *) stmt->object), newowner);

  case 134:
   return AlterSchemaOwner(strVal((Value *) stmt->object), newowner);

  case 128:
  case 147:
   return AlterTypeOwner(castNode(List, stmt->object), newowner, stmt->objectType);
   break;

  case 145:
   return AlterForeignDataWrapperOwner(strVal((Value *) stmt->object),
            newowner);

  case 144:
   return AlterForeignServerOwner(strVal((Value *) stmt->object),
             newowner);

  case 146:
   return AlterEventTriggerOwner(strVal((Value *) stmt->object),
            newowner);

  case 136:
   return AlterPublicationOwner(strVal((Value *) stmt->object),
           newowner);

  case 132:
   return AlterSubscriptionOwner(strVal((Value *) stmt->object),
            newowner);


  case 151:
  case 150:
  case 149:
  case 143:
  case 142:
  case 141:
  case 139:
  case 140:
  case 138:
  case 137:
  case 135:
  case 133:
  case 131:
  case 129:
  case 130:
   {
    Relation catalog;
    Relation relation;
    Oid classId;
    ObjectAddress address;

    address = get_object_address(stmt->objectType,
            stmt->object,
            &relation,
            AccessExclusiveLock,
            0);
    Assert(relation == ((void*)0));
    classId = address.classId;






    if (classId == LargeObjectRelationId)
     classId = LargeObjectMetadataRelationId;

    catalog = table_open(classId, RowExclusiveLock);

    AlterObjectOwner_internal(catalog, address.objectId, newowner);
    table_close(catalog, RowExclusiveLock);

    return address;
   }
   break;

  default:
   elog(ERROR, "unrecognized AlterOwnerStmt type: %d",
     (int) stmt->objectType);
   return InvalidObjectAddress;
 }
}
