
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_25__ {int objectId; int classId; } ;
struct TYPE_24__ {int renameType; int newname; int object; int subname; int relation; } ;
typedef TYPE_1__ RenameStmt ;
typedef int * Relation ;
typedef TYPE_2__ ObjectAddress ;


 int AccessExclusiveLock ;
 int AlterObjectRename_internal (int *,int ,int ) ;
 int Assert (int ) ;
 int ERROR ;
 TYPE_2__ InvalidObjectAddress ;
 TYPE_2__ RenameConstraint (TYPE_1__*) ;
 TYPE_2__ RenameDatabase (int ,int ) ;
 TYPE_2__ RenameRelation (TYPE_1__*) ;
 TYPE_2__ RenameRewriteRule (int ,int ,int ) ;
 TYPE_2__ RenameRole (int ,int ) ;
 TYPE_2__ RenameSchema (int ,int ) ;
 TYPE_2__ RenameTableSpace (int ,int ) ;
 TYPE_2__ RenameType (TYPE_1__*) ;
 int RowExclusiveLock ;
 int elog (int ,char*,int) ;
 TYPE_2__ get_object_address (int,int ,int **,int ,int) ;
 TYPE_2__ rename_policy (TYPE_1__*) ;
 TYPE_2__ renameatt (TYPE_1__*) ;
 TYPE_2__ renametrig (TYPE_1__*) ;
 int table_close (int *,int ) ;
 int * table_open (int ,int ) ;

ObjectAddress
ExecRenameStmt(RenameStmt *stmt)
{
 switch (stmt->renameType)
 {
  case 137:
  case 158:
   return RenameConstraint(stmt);

  case 160:
   return RenameDatabase(stmt->subname, stmt->newname);

  case 144:
   return RenameRole(stmt->subname, stmt->newname);

  case 141:
   return RenameSchema(stmt->subname, stmt->newname);

  case 135:
   return RenameTableSpace(stmt->subname, stmt->newname);

  case 136:
  case 140:
  case 128:
  case 150:
  case 152:
  case 154:
   return RenameRelation(stmt);

  case 162:
  case 164:
   return renameatt(stmt);

  case 142:
   return RenameRewriteRule(stmt->relation, stmt->subname,
          stmt->newname);

  case 134:
   return renametrig(stmt);

  case 147:
   return rename_policy(stmt);

  case 159:
  case 129:
   return RenameType(stmt);

  case 165:
  case 163:
  case 161:
  case 157:
  case 156:
  case 155:
  case 153:
  case 149:
  case 148:
  case 151:
  case 146:
  case 143:
  case 139:
  case 133:
  case 132:
  case 131:
  case 130:
  case 145:
  case 138:
   {
    ObjectAddress address;
    Relation catalog;
    Relation relation;

    address = get_object_address(stmt->renameType,
            stmt->object,
            &relation,
            AccessExclusiveLock, 0);
    Assert(relation == ((void*)0));

    catalog = table_open(address.classId, RowExclusiveLock);
    AlterObjectRename_internal(catalog,
             address.objectId,
             stmt->newname);
    table_close(catalog, RowExclusiveLock);

    return address;
   }

  default:
   elog(ERROR, "unrecognized rename stmt type: %d",
     (int) stmt->renameType);
   return InvalidObjectAddress;
 }
}
