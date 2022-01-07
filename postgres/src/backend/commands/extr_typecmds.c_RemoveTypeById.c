
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ typtype; } ;
struct TYPE_7__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_type ;


 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 int EnumValuesDelete (int ) ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RangeDelete (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 scalar_t__ TYPTYPE_ENUM ;
 scalar_t__ TYPTYPE_RANGE ;
 int TypeRelationId ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveTypeById(Oid typeOid)
{
 Relation relation;
 HeapTuple tup;

 relation = table_open(TypeRelationId, RowExclusiveLock);

 tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typeOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", typeOid);

 CatalogTupleDelete(relation, &tup->t_self);






 if (((Form_pg_type) GETSTRUCT(tup))->typtype == TYPTYPE_ENUM)
  EnumValuesDelete(typeOid);






 if (((Form_pg_type) GETSTRUCT(tup))->typtype == TYPTYPE_RANGE)
  RangeDelete(typeOid);

 ReleaseSysCache(tup);

 table_close(relation, RowExclusiveLock);
}
