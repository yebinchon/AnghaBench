
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_12__ {int atttypid; int attname; scalar_t__ attisdropped; } ;
struct TYPE_11__ {int t_data; int t_len; } ;
struct TYPE_10__ {int natts; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int JsonTypeCategory ;
typedef int HeapTupleHeader ;
typedef TYPE_2__ HeapTupleData ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Datum ;


 int DatumGetHeapTupleHeader (int ) ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 int HeapTupleHeaderGetTypeId (int ) ;
 int InvalidOid ;
 int JSONTYPE_NULL ;
 char* NameStr (int ) ;
 int ReleaseTupleDesc (TYPE_1__*) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char const*) ;
 int datum_to_json (int ,int,int ,int ,int ,int) ;
 int escape_json (int ,char*) ;
 int heap_getattr (TYPE_2__*,int,TYPE_1__*,int*) ;
 int json_categorize_type (int ,int *,int *) ;
 TYPE_1__* lookup_rowtype_tupdesc (int ,int ) ;

__attribute__((used)) static void
composite_to_json(Datum composite, StringInfo result, bool use_line_feeds)
{
 HeapTupleHeader td;
 Oid tupType;
 int32 tupTypmod;
 TupleDesc tupdesc;
 HeapTupleData tmptup,
      *tuple;
 int i;
 bool needsep = 0;
 const char *sep;

 sep = use_line_feeds ? ",\n " : ",";

 td = DatumGetHeapTupleHeader(composite);


 tupType = HeapTupleHeaderGetTypeId(td);
 tupTypmod = HeapTupleHeaderGetTypMod(td);
 tupdesc = lookup_rowtype_tupdesc(tupType, tupTypmod);


 tmptup.t_len = HeapTupleHeaderGetDatumLength(td);
 tmptup.t_data = td;
 tuple = &tmptup;

 appendStringInfoChar(result, '{');

 for (i = 0; i < tupdesc->natts; i++)
 {
  Datum val;
  bool isnull;
  char *attname;
  JsonTypeCategory tcategory;
  Oid outfuncoid;
  Form_pg_attribute att = TupleDescAttr(tupdesc, i);

  if (att->attisdropped)
   continue;

  if (needsep)
   appendStringInfoString(result, sep);
  needsep = 1;

  attname = NameStr(att->attname);
  escape_json(result, attname);
  appendStringInfoChar(result, ':');

  val = heap_getattr(tuple, i + 1, tupdesc, &isnull);

  if (isnull)
  {
   tcategory = JSONTYPE_NULL;
   outfuncoid = InvalidOid;
  }
  else
   json_categorize_type(att->atttypid, &tcategory, &outfuncoid);

  datum_to_json(val, isnull, result, tcategory, outfuncoid, 0);
 }

 appendStringInfoChar(result, '}');
 ReleaseTupleDesc(tupdesc);
}
