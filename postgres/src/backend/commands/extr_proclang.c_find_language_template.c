
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tmpldbacreate; int tmpltrusted; } ;
struct TYPE_4__ {void* tmpllibrary; void* tmplhandler; void* tmplvalidator; void* tmplinline; int tmpldbacreate; int tmpltrusted; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__ PLTemplate ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_pltemplate ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_pltemplate_tmplhandler ;
 int Anum_pg_pltemplate_tmplinline ;
 int Anum_pg_pltemplate_tmpllibrary ;
 int Anum_pg_pltemplate_tmplname ;
 int Anum_pg_pltemplate_tmplvalidator ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int F_NAMEEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int PLTemplateNameIndexId ;
 int PLTemplateRelationId ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 void* TextDatumGetCString (int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 scalar_t__ palloc0 (int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static PLTemplate *
find_language_template(const char *languageName)
{
 PLTemplate *result;
 Relation rel;
 SysScanDesc scan;
 ScanKeyData key;
 HeapTuple tup;

 rel = table_open(PLTemplateRelationId, AccessShareLock);

 ScanKeyInit(&key,
    Anum_pg_pltemplate_tmplname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(languageName));
 scan = systable_beginscan(rel, PLTemplateNameIndexId, 1,
         ((void*)0), 1, &key);

 tup = systable_getnext(scan);
 if (HeapTupleIsValid(tup))
 {
  Form_pg_pltemplate tmpl = (Form_pg_pltemplate) GETSTRUCT(tup);
  Datum datum;
  bool isnull;

  result = (PLTemplate *) palloc0(sizeof(PLTemplate));
  result->tmpltrusted = tmpl->tmpltrusted;
  result->tmpldbacreate = tmpl->tmpldbacreate;


  datum = heap_getattr(tup, Anum_pg_pltemplate_tmplhandler,
        RelationGetDescr(rel), &isnull);
  if (!isnull)
   result->tmplhandler = TextDatumGetCString(datum);

  datum = heap_getattr(tup, Anum_pg_pltemplate_tmplinline,
        RelationGetDescr(rel), &isnull);
  if (!isnull)
   result->tmplinline = TextDatumGetCString(datum);

  datum = heap_getattr(tup, Anum_pg_pltemplate_tmplvalidator,
        RelationGetDescr(rel), &isnull);
  if (!isnull)
   result->tmplvalidator = TextDatumGetCString(datum);

  datum = heap_getattr(tup, Anum_pg_pltemplate_tmpllibrary,
        RelationGetDescr(rel), &isnull);
  if (!isnull)
   result->tmpllibrary = TextDatumGetCString(datum);


  if (!result->tmplhandler || !result->tmpllibrary)
   result = ((void*)0);
 }
 else
  result = ((void*)0);

 systable_endscan(scan);

 table_close(rel, AccessShareLock);

 return result;
}
