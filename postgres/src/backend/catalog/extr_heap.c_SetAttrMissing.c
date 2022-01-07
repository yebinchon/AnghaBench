
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int valuesAtt ;
typedef int replacesAtt ;
typedef int nullsAtt ;
struct TYPE_11__ {int atttypmod; int atttypid; } ;
struct TYPE_10__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;


 int AccessExclusiveLock ;
 int Anum_pg_attribute_atthasmissing ;
 int Anum_pg_attribute_attmissingval ;
 int AttributeRelationId ;
 int BoolGetDatum (int) ;
 int CStringGetDatum (char*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERROR ;
 int F_ARRAY_IN ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Int32GetDatum (int ) ;
 int MemSet (int*,int,int) ;
 int Natts_pg_attribute ;
 int ObjectIdGetDatum (int ) ;
 int OidFunctionCall3 (int ,int ,int ,int ) ;
 int RelationGetDescr (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheAttName (int ,char*) ;
 int elog (int ,char*,char*,int ) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
SetAttrMissing(Oid relid, char *attname, char *value)
{
 Datum valuesAtt[Natts_pg_attribute];
 bool nullsAtt[Natts_pg_attribute];
 bool replacesAtt[Natts_pg_attribute];
 Datum missingval;
 Form_pg_attribute attStruct;
 Relation attrrel,
    tablerel;
 HeapTuple atttup,
    newtup;


 tablerel = table_open(relid, AccessExclusiveLock);


 attrrel = table_open(AttributeRelationId, RowExclusiveLock);
 atttup = SearchSysCacheAttName(relid, attname);
 if (!HeapTupleIsValid(atttup))
  elog(ERROR, "cache lookup failed for attribute %s of relation %u",
    attname, relid);
 attStruct = (Form_pg_attribute) GETSTRUCT(atttup);


 missingval = OidFunctionCall3(F_ARRAY_IN,
          CStringGetDatum(value),
          ObjectIdGetDatum(attStruct->atttypid),
          Int32GetDatum(attStruct->atttypmod));


 MemSet(valuesAtt, 0, sizeof(valuesAtt));
 MemSet(nullsAtt, 0, sizeof(nullsAtt));
 MemSet(replacesAtt, 0, sizeof(replacesAtt));

 valuesAtt[Anum_pg_attribute_atthasmissing - 1] = BoolGetDatum(1);
 replacesAtt[Anum_pg_attribute_atthasmissing - 1] = 1;
 valuesAtt[Anum_pg_attribute_attmissingval - 1] = missingval;
 replacesAtt[Anum_pg_attribute_attmissingval - 1] = 1;

 newtup = heap_modify_tuple(atttup, RelationGetDescr(attrrel),
          valuesAtt, nullsAtt, replacesAtt);
 CatalogTupleUpdate(attrrel, &newtup->t_self, newtup);


 ReleaseSysCache(atttup);
 table_close(attrrel, RowExclusiveLock);
 table_close(tablerel, AccessExclusiveLock);
}
