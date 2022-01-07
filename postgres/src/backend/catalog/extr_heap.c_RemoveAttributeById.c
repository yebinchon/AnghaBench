
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int valuesAtt ;
typedef int replacesAtt ;
typedef int nullsAtt ;
typedef int newattname ;
struct TYPE_10__ {int attisdropped; int attnotnull; char attgenerated; scalar_t__ atthasmissing; int attname; scalar_t__ attstattarget; int atttypid; } ;
struct TYPE_9__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;
typedef int AttrNumber ;


 int ATTNUM ;
 int AccessExclusiveLock ;
 int Anum_pg_attribute_atthasmissing ;
 int Anum_pg_attribute_attmissingval ;
 int AttributeRelationId ;
 int BoolGetDatum (int) ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Int16GetDatum (int) ;
 int InvalidOid ;
 int MemSet (int*,int,int) ;
 int NAMEDATALEN ;
 int Natts_pg_attribute ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RemoveStatistics (int ,int) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy2 (int ,int ,int ) ;
 int elog (int ,char*,int,int ) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int namestrcpy (int *,char*) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 int snprintf (char*,int,char*,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveAttributeById(Oid relid, AttrNumber attnum)
{
 Relation rel;
 Relation attr_rel;
 HeapTuple tuple;
 Form_pg_attribute attStruct;
 char newattname[NAMEDATALEN];







 rel = relation_open(relid, AccessExclusiveLock);

 attr_rel = table_open(AttributeRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopy2(ATTNUM,
        ObjectIdGetDatum(relid),
        Int16GetDatum(attnum));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for attribute %d of relation %u",
    attnum, relid);
 attStruct = (Form_pg_attribute) GETSTRUCT(tuple);

 if (attnum < 0)
 {


  CatalogTupleDelete(attr_rel, &tuple->t_self);
 }
 else
 {



  attStruct->attisdropped = 1;
  attStruct->atttypid = InvalidOid;


  attStruct->attnotnull = 0;


  attStruct->attstattarget = 0;


  attStruct->attgenerated = '\0';




  snprintf(newattname, sizeof(newattname),
     "........pg.dropped.%d........", attnum);
  namestrcpy(&(attStruct->attname), newattname);


  if (attStruct->atthasmissing)
  {
   Datum valuesAtt[Natts_pg_attribute];
   bool nullsAtt[Natts_pg_attribute];
   bool replacesAtt[Natts_pg_attribute];


   MemSet(valuesAtt, 0, sizeof(valuesAtt));
   MemSet(nullsAtt, 0, sizeof(nullsAtt));
   MemSet(replacesAtt, 0, sizeof(replacesAtt));

   valuesAtt[Anum_pg_attribute_atthasmissing - 1] =
    BoolGetDatum(0);
   replacesAtt[Anum_pg_attribute_atthasmissing - 1] = 1;
   valuesAtt[Anum_pg_attribute_attmissingval - 1] = (Datum) 0;
   nullsAtt[Anum_pg_attribute_attmissingval - 1] = 1;
   replacesAtt[Anum_pg_attribute_attmissingval - 1] = 1;

   tuple = heap_modify_tuple(tuple, RelationGetDescr(attr_rel),
           valuesAtt, nullsAtt, replacesAtt);
  }

  CatalogTupleUpdate(attr_rel, &tuple->t_self, tuple);
 }







 table_close(attr_rel, RowExclusiveLock);

 if (attnum > 0)
  RemoveStatistics(relid, attnum);

 relation_close(rel, NoLock);
}
