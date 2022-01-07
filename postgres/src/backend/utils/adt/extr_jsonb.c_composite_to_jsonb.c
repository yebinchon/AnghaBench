
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int int32 ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_23__ {int atttypid; int attname; scalar_t__ attisdropped; } ;
struct TYPE_22__ {int t_data; int t_len; } ;
struct TYPE_21__ {int parseState; void* res; } ;
struct TYPE_17__ {char* val; int len; } ;
struct TYPE_18__ {TYPE_1__ string; } ;
struct TYPE_20__ {TYPE_2__ val; int type; } ;
struct TYPE_19__ {int natts; } ;
typedef int Oid ;
typedef TYPE_4__ JsonbValue ;
typedef int JsonbTypeCategory ;
typedef TYPE_5__ JsonbInState ;
typedef int HeapTupleHeader ;
typedef TYPE_6__ HeapTupleData ;
typedef TYPE_7__* Form_pg_attribute ;
typedef int Datum ;


 int DatumGetHeapTupleHeader (int ) ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 int HeapTupleHeaderGetTypeId (int ) ;
 int InvalidOid ;
 int JSONBTYPE_NULL ;
 char* NameStr (int ) ;
 int ReleaseTupleDesc (TYPE_3__*) ;
 TYPE_7__* TupleDescAttr (TYPE_3__*,int) ;
 int WJB_BEGIN_OBJECT ;
 int WJB_END_OBJECT ;
 int WJB_KEY ;
 int datum_to_jsonb (int ,int,TYPE_5__*,int ,int ,int) ;
 int heap_getattr (TYPE_6__*,int,TYPE_3__*,int*) ;
 int jbvString ;
 int jsonb_categorize_type (int ,int *,int *) ;
 TYPE_3__* lookup_rowtype_tupdesc (int ,int ) ;
 void* pushJsonbValue (int *,int ,TYPE_4__*) ;
 int strlen (char*) ;

__attribute__((used)) static void
composite_to_jsonb(Datum composite, JsonbInState *result)
{
 HeapTupleHeader td;
 Oid tupType;
 int32 tupTypmod;
 TupleDesc tupdesc;
 HeapTupleData tmptup,
      *tuple;
 int i;

 td = DatumGetHeapTupleHeader(composite);


 tupType = HeapTupleHeaderGetTypeId(td);
 tupTypmod = HeapTupleHeaderGetTypMod(td);
 tupdesc = lookup_rowtype_tupdesc(tupType, tupTypmod);


 tmptup.t_len = HeapTupleHeaderGetDatumLength(td);
 tmptup.t_data = td;
 tuple = &tmptup;

 result->res = pushJsonbValue(&result->parseState, WJB_BEGIN_OBJECT, ((void*)0));

 for (i = 0; i < tupdesc->natts; i++)
 {
  Datum val;
  bool isnull;
  char *attname;
  JsonbTypeCategory tcategory;
  Oid outfuncoid;
  JsonbValue v;
  Form_pg_attribute att = TupleDescAttr(tupdesc, i);

  if (att->attisdropped)
   continue;

  attname = NameStr(att->attname);

  v.type = jbvString;

  v.val.string.len = strlen(attname);
  v.val.string.val = attname;

  result->res = pushJsonbValue(&result->parseState, WJB_KEY, &v);

  val = heap_getattr(tuple, i + 1, tupdesc, &isnull);

  if (isnull)
  {
   tcategory = JSONBTYPE_NULL;
   outfuncoid = InvalidOid;
  }
  else
   jsonb_categorize_type(att->atttypid, &tcategory, &outfuncoid);

  datum_to_jsonb(val, isnull, result, tcategory, outfuncoid, 0);
 }

 result->res = pushJsonbValue(&result->parseState, WJB_END_OBJECT, ((void*)0));
 ReleaseTupleDesc(tupdesc);
}
