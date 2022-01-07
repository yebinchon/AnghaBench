
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Value ;
struct TYPE_14__ {int objectType; int newschema; scalar_t__ object; } ;
struct TYPE_13__ {int objectId; int classId; } ;
typedef int * Relation ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__ AlterObjectSchemaStmt ;


 int AccessExclusiveLock ;
 TYPE_1__ AlterExtensionNamespace (int ,int ,int *) ;
 int AlterObjectNamespace_internal (int *,int ,int ) ;
 TYPE_1__ AlterTableNamespace (TYPE_2__*,int *) ;
 TYPE_1__ AlterTypeNamespace (int ,int ,int,int *) ;
 int Assert (int ) ;
 int ERROR ;
 TYPE_1__ InvalidObjectAddress ;
 int List ;
 int LookupCreationNamespace (int ) ;
 int NamespaceRelationId ;
 int ObjectAddressSet (TYPE_1__,int ,int ) ;
 int RowExclusiveLock ;
 int castNode (int ,scalar_t__) ;
 int elog (int ,char*,int) ;
 TYPE_1__ get_object_address (int,scalar_t__,int **,int ,int) ;
 int strVal (int *) ;
 int table_close (int *,int ) ;
 int * table_open (int ,int ) ;

ObjectAddress
ExecAlterObjectSchemaStmt(AlterObjectSchemaStmt *stmt,
        ObjectAddress *oldSchemaAddr)
{
 ObjectAddress address;
 Oid oldNspOid;

 switch (stmt->objectType)
 {
  case 145:
   address = AlterExtensionNamespace(strVal((Value *) stmt->object), stmt->newschema,
             oldSchemaAddr ? &oldNspOid : ((void*)0));
   break;

  case 144:
  case 136:
  case 134:
  case 128:
  case 142:
   address = AlterTableNamespace(stmt,
            oldSchemaAddr ? &oldNspOid : ((void*)0));
   break;

  case 146:
  case 129:
   address = AlterTypeNamespace(castNode(List, stmt->object), stmt->newschema,
           stmt->objectType,
           oldSchemaAddr ? &oldNspOid : ((void*)0));
   break;


  case 149:
  case 148:
  case 147:
  case 143:
  case 140:
  case 141:
  case 139:
  case 138:
  case 137:
  case 135:
  case 133:
  case 132:
  case 131:
  case 130:
   {
    Relation catalog;
    Relation relation;
    Oid classId;
    Oid nspOid;

    address = get_object_address(stmt->objectType,
            stmt->object,
            &relation,
            AccessExclusiveLock,
            0);
    Assert(relation == ((void*)0));
    classId = address.classId;
    catalog = table_open(classId, RowExclusiveLock);
    nspOid = LookupCreationNamespace(stmt->newschema);

    oldNspOid = AlterObjectNamespace_internal(catalog, address.objectId,
                nspOid);
    table_close(catalog, RowExclusiveLock);
   }
   break;

  default:
   elog(ERROR, "unrecognized AlterObjectSchemaStmt type: %d",
     (int) stmt->objectType);
   return InvalidObjectAddress;
 }

 if (oldSchemaAddr)
  ObjectAddressSet(*oldSchemaAddr, NamespaceRelationId, oldNspOid);

 return address;
}
