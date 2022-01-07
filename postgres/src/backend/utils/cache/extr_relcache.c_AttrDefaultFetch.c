
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {TYPE_1__* constr; } ;
struct TYPE_19__ {scalar_t__ adnum; int * adbin; } ;
struct TYPE_18__ {scalar_t__ adnum; } ;
struct TYPE_17__ {int attname; } ;
struct TYPE_16__ {TYPE_9__* rd_att; } ;
struct TYPE_15__ {int num_defval; TYPE_5__* defval; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_4__* Form_pg_attrdef ;
typedef int Datum ;
typedef TYPE_5__ AttrDefault ;


 int AccessShareLock ;
 int Anum_pg_attrdef_adbin ;
 int Anum_pg_attrdef_adrelid ;
 int AttrDefaultIndexId ;
 int AttrDefaultRelationId ;
 int BTEqualStrategyNumber ;
 int CacheMemoryContext ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int * MemoryContextStrdup (int ,char*) ;
 scalar_t__ NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 char* TextDatumGetCString (int ) ;
 TYPE_3__* TupleDescAttr (TYPE_9__*,scalar_t__) ;
 int WARNING ;
 int elog (int ,char*,scalar_t__,int ) ;
 int fastgetattr (int ,int ,TYPE_9__*,int*) ;
 int pfree (char*) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static void
AttrDefaultFetch(Relation relation)
{
 AttrDefault *attrdef = relation->rd_att->constr->defval;
 int ndef = relation->rd_att->constr->num_defval;
 Relation adrel;
 SysScanDesc adscan;
 ScanKeyData skey;
 HeapTuple htup;
 Datum val;
 bool isnull;
 int found;
 int i;

 ScanKeyInit(&skey,
    Anum_pg_attrdef_adrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(relation)));

 adrel = table_open(AttrDefaultRelationId, AccessShareLock);
 adscan = systable_beginscan(adrel, AttrDefaultIndexId, 1,
        ((void*)0), 1, &skey);
 found = 0;

 while (HeapTupleIsValid(htup = systable_getnext(adscan)))
 {
  Form_pg_attrdef adform = (Form_pg_attrdef) GETSTRUCT(htup);
  Form_pg_attribute attr = TupleDescAttr(relation->rd_att, adform->adnum - 1);

  for (i = 0; i < ndef; i++)
  {
   if (adform->adnum != attrdef[i].adnum)
    continue;
   if (attrdef[i].adbin != ((void*)0))
    elog(WARNING, "multiple attrdef records found for attr %s of rel %s",
      NameStr(attr->attname),
      RelationGetRelationName(relation));
   else
    found++;

   val = fastgetattr(htup,
         Anum_pg_attrdef_adbin,
         adrel->rd_att, &isnull);
   if (isnull)
    elog(WARNING, "null adbin for attr %s of rel %s",
      NameStr(attr->attname),
      RelationGetRelationName(relation));
   else
   {

    char *s = TextDatumGetCString(val);

    attrdef[i].adbin = MemoryContextStrdup(CacheMemoryContext, s);
    pfree(s);
   }
   break;
  }

  if (i >= ndef)
   elog(WARNING, "unexpected attrdef record found for attr %d of rel %s",
     adform->adnum, RelationGetRelationName(relation));
 }

 systable_endscan(adscan);
 table_close(adrel, AccessShareLock);
}
