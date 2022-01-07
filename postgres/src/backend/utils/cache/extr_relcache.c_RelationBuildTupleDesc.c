
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_12__ ;


struct TYPE_26__ {int has_not_null; int has_generated_stored; int num_defval; int num_check; int * check; TYPE_5__* missing; TYPE_6__* defval; } ;
typedef TYPE_2__ TupleConstr ;
struct TYPE_30__ {int adnum; int * adbin; } ;
struct TYPE_29__ {int am_present; int am_value; } ;
struct TYPE_28__ {int attnum; scalar_t__ attgenerated; int attlen; int attbyval; int attalign; scalar_t__ atthasmissing; scalar_t__ atthasdef; scalar_t__ attnotnull; } ;
struct TYPE_27__ {TYPE_14__* rd_att; TYPE_1__* rd_rel; } ;
struct TYPE_25__ {int relnatts; int relchecks; int reltype; } ;
struct TYPE_24__ {int tdtypmod; TYPE_2__* constr; int tdtypeid; } ;
struct TYPE_23__ {int attcacheoff; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_3__* Relation ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int Datum ;
typedef int ConstrCheck ;
typedef TYPE_5__ AttrMissing ;
typedef TYPE_6__ AttrDefault ;


 int ATTRIBUTE_FIXED_PART_SIZE ;
 scalar_t__ ATTRIBUTE_GENERATED_STORED ;
 int AccessShareLock ;
 int Anum_pg_attribute_attmissingval ;
 int Anum_pg_attribute_attnum ;
 int Anum_pg_attribute_attrelid ;
 int Assert (int) ;
 int AttrDefaultFetch (TYPE_3__*) ;
 int AttributeRelationId ;
 int AttributeRelidNumIndexId ;
 int BTEqualStrategyNumber ;
 int BTGreaterStrategyNumber ;
 int CacheMemoryContext ;
 int CheckConstraintFetch (TYPE_3__*) ;
 int ERROR ;
 int F_INT2GT ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetNumberOfAttributes (TYPE_3__*) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int RelationGetRelid (TYPE_3__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 TYPE_12__* TupleDescAttr (TYPE_14__*,int) ;
 int array_get_element (int ,int,int*,int,int ,int ,int ,int*) ;
 int criticalRelcachesBuilt ;
 int datumCopy (int ,int ,int ) ;
 int elog (int ,char*,int,int ) ;
 int heap_getattr (int ,int ,TYPE_14__*,int*) ;
 int memcpy (TYPE_12__*,TYPE_4__*,int ) ;
 int pfree (TYPE_2__*) ;
 scalar_t__ repalloc (TYPE_6__*,int) ;
 int systable_beginscan (TYPE_3__*,int ,int ,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_3__*,int ) ;
 TYPE_3__* table_open (int ,int ) ;

__attribute__((used)) static void
RelationBuildTupleDesc(Relation relation)
{
 HeapTuple pg_attribute_tuple;
 Relation pg_attribute_desc;
 SysScanDesc pg_attribute_scan;
 ScanKeyData skey[2];
 int need;
 TupleConstr *constr;
 AttrDefault *attrdef = ((void*)0);
 AttrMissing *attrmiss = ((void*)0);
 int ndef = 0;


 relation->rd_att->tdtypeid = relation->rd_rel->reltype;
 relation->rd_att->tdtypmod = -1;

 constr = (TupleConstr *) MemoryContextAlloc(CacheMemoryContext,
            sizeof(TupleConstr));
 constr->has_not_null = 0;
 constr->has_generated_stored = 0;






 ScanKeyInit(&skey[0],
    Anum_pg_attribute_attrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(relation)));
 ScanKeyInit(&skey[1],
    Anum_pg_attribute_attnum,
    BTGreaterStrategyNumber, F_INT2GT,
    Int16GetDatum(0));






 pg_attribute_desc = table_open(AttributeRelationId, AccessShareLock);
 pg_attribute_scan = systable_beginscan(pg_attribute_desc,
             AttributeRelidNumIndexId,
             criticalRelcachesBuilt,
             ((void*)0),
             2, skey);




 need = RelationGetNumberOfAttributes(relation);

 while (HeapTupleIsValid(pg_attribute_tuple = systable_getnext(pg_attribute_scan)))
 {
  Form_pg_attribute attp;
  int attnum;

  attp = (Form_pg_attribute) GETSTRUCT(pg_attribute_tuple);

  attnum = attp->attnum;
  if (attnum <= 0 || attnum > RelationGetNumberOfAttributes(relation))
   elog(ERROR, "invalid attribute number %d for %s",
     attp->attnum, RelationGetRelationName(relation));


  memcpy(TupleDescAttr(relation->rd_att, attnum - 1),
      attp,
      ATTRIBUTE_FIXED_PART_SIZE);


  if (attp->attnotnull)
   constr->has_not_null = 1;
  if (attp->attgenerated == ATTRIBUTE_GENERATED_STORED)
   constr->has_generated_stored = 1;


  if (attp->atthasdef)
  {
   if (attrdef == ((void*)0))
    attrdef = (AttrDefault *)
     MemoryContextAllocZero(CacheMemoryContext,
             RelationGetNumberOfAttributes(relation) *
             sizeof(AttrDefault));
   attrdef[ndef].adnum = attnum;
   attrdef[ndef].adbin = ((void*)0);

   ndef++;
  }


  if (attp->atthasmissing)
  {
   Datum missingval;
   bool missingNull;


   missingval = heap_getattr(pg_attribute_tuple,
           Anum_pg_attribute_attmissingval,
           pg_attribute_desc->rd_att,
           &missingNull);
   if (!missingNull)
   {

    MemoryContext oldcxt;
    bool is_null;
    int one = 1;
    Datum missval;

    if (attrmiss == ((void*)0))
     attrmiss = (AttrMissing *)
      MemoryContextAllocZero(CacheMemoryContext,
              relation->rd_rel->relnatts *
              sizeof(AttrMissing));

    missval = array_get_element(missingval,
           1,
           &one,
           -1,
           attp->attlen,
           attp->attbyval,
           attp->attalign,
           &is_null);
    Assert(!is_null);
    if (attp->attbyval)
    {

     attrmiss[attnum - 1].am_value = missval;
    }
    else
    {

     oldcxt = MemoryContextSwitchTo(CacheMemoryContext);
     attrmiss[attnum - 1].am_value = datumCopy(missval,
                 attp->attbyval,
                 attp->attlen);
     MemoryContextSwitchTo(oldcxt);
    }
    attrmiss[attnum - 1].am_present = 1;
   }
  }
  need--;
  if (need == 0)
   break;
 }




 systable_endscan(pg_attribute_scan);
 table_close(pg_attribute_desc, AccessShareLock);

 if (need != 0)
  elog(ERROR, "catalog is missing %d attribute(s) for relid %u",
    need, RelationGetRelid(relation));
 if (RelationGetNumberOfAttributes(relation) > 0)
  TupleDescAttr(relation->rd_att, 0)->attcacheoff = 0;




 if (constr->has_not_null || ndef > 0 ||
  attrmiss || relation->rd_rel->relchecks)
 {
  relation->rd_att->constr = constr;

  if (ndef > 0)
  {
   if (ndef < RelationGetNumberOfAttributes(relation))
    constr->defval = (AttrDefault *)
     repalloc(attrdef, ndef * sizeof(AttrDefault));
   else
    constr->defval = attrdef;
   constr->num_defval = ndef;
   AttrDefaultFetch(relation);
  }
  else
   constr->num_defval = 0;

  constr->missing = attrmiss;

  if (relation->rd_rel->relchecks > 0)
  {
   constr->num_check = relation->rd_rel->relchecks;
   constr->check = (ConstrCheck *)
    MemoryContextAllocZero(CacheMemoryContext,
            constr->num_check * sizeof(ConstrCheck));
   CheckConstraintFetch(relation);
  }
  else
   constr->num_check = 0;
 }
 else
 {
  pfree(constr);
  relation->rd_att->constr = ((void*)0);
 }
}
