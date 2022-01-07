
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_3__ {int skipIfNewValExists; int newValIsAfter; int newValNeighbor; int newVal; int oldVal; int typeName; } ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_1__ AlterEnumStmt ;


 int AddEnumLabel (int ,int ,int ,int ,int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int RenameEnumLabel (int ,int ,int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int TypeRelationId ;
 int checkEnumOwner (int ) ;
 int elog (int ,char*,int ) ;
 int * makeTypeNameFromNameList (int ) ;
 int typenameTypeId (int *,int *) ;

ObjectAddress
AlterEnum(AlterEnumStmt *stmt)
{
 Oid enum_type_oid;
 TypeName *typename;
 HeapTuple tup;
 ObjectAddress address;


 typename = makeTypeNameFromNameList(stmt->typeName);
 enum_type_oid = typenameTypeId(((void*)0), typename);

 tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(enum_type_oid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", enum_type_oid);


 checkEnumOwner(tup);

 ReleaseSysCache(tup);

 if (stmt->oldVal)
 {

  RenameEnumLabel(enum_type_oid, stmt->oldVal, stmt->newVal);
 }
 else
 {

  AddEnumLabel(enum_type_oid, stmt->newVal,
      stmt->newValNeighbor, stmt->newValIsAfter,
      stmt->skipIfNewValExists);
 }

 InvokeObjectPostAlterHook(TypeRelationId, enum_type_oid, 0);

 ObjectAddressSet(address, TypeRelationId, enum_type_oid);

 return address;
}
