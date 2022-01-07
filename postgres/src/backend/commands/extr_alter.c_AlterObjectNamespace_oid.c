
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef int Relation ;
typedef void* Oid ;
typedef int ObjectAddresses ;
typedef TYPE_1__ ObjectAddress ;


 int AccessExclusiveLock ;
 void* AlterObjectNamespace_internal (int ,void*,void*) ;
 int AlterTableNamespaceInternal (int ,void*,void*,int *) ;
 void* AlterTypeNamespace_oid (void*,void*,int *) ;
 void* InvalidOid ;
 int NoLock ;
 void* RelationGetNamespace (int ) ;
 int RowExclusiveLock ;
 int getObjectClass (TYPE_1__*) ;
 int relation_close (int ,int ) ;
 int relation_open (void*,int ) ;
 int table_close (int ,int ) ;
 int table_open (void*,int ) ;

Oid
AlterObjectNamespace_oid(Oid classId, Oid objid, Oid nspOid,
       ObjectAddresses *objsMoved)
{
 Oid oldNspOid = InvalidOid;
 ObjectAddress dep;

 dep.classId = classId;
 dep.objectId = objid;
 dep.objectSubId = 0;

 switch (getObjectClass(&dep))
 {
  case 161:
   {
    Relation rel;

    rel = relation_open(objid, AccessExclusiveLock);
    oldNspOid = RelationGetNamespace(rel);

    AlterTableNamespaceInternal(rel, oldNspOid, nspOid, objsMoved);

    relation_close(rel, NoLock);
    break;
   }

  case 129:
   oldNspOid = AlterTypeNamespace_oid(objid, nspOid, objsMoved);
   break;

  case 144:
  case 160:
  case 158:
  case 147:
  case 148:
  case 146:
  case 138:
  case 131:
  case 132:
  case 130:
  case 133:
   {
    Relation catalog;

    catalog = table_open(classId, RowExclusiveLock);

    oldNspOid = AlterObjectNamespace_internal(catalog, objid,
                nspOid);

    table_close(catalog, RowExclusiveLock);
   }
   break;

  case 162:
  case 159:
  case 155:
  case 150:
  case 149:
  case 165:
  case 164:
  case 163:
  case 141:
  case 134:
  case 139:
  case 140:
  case 157:
  case 136:
  case 152:
  case 151:
  case 128:
  case 156:
  case 153:
  case 154:
  case 145:
  case 143:
  case 142:
  case 137:
  case 135:

   break;





 }

 return oldNspOid;
}
