
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ attnum; int attname; int atttypid; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;


 int NameStr (int ) ;
 int OidOutputFunctionCall (int ,int ) ;
 int PG_DETOAST_DATUM (int ) ;
 int PointerGetDatum (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL_ONDISK (int ) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 char* format_type_be (int ) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int heap_getattr (int ,int,TYPE_1__*,int*) ;
 int print_literal (int ,int ,int ) ;
 char* quote_identifier (int ) ;

__attribute__((used)) static void
tuple_to_stringinfo(StringInfo s, TupleDesc tupdesc, HeapTuple tuple, bool skip_nulls)
{
 int natt;


 for (natt = 0; natt < tupdesc->natts; natt++)
 {
  Form_pg_attribute attr;
  Oid typid;
  Oid typoutput;
  bool typisvarlena;
  Datum origval;
  bool isnull;

  attr = TupleDescAttr(tupdesc, natt);





  if (attr->attisdropped)
   continue;





  if (attr->attnum < 0)
   continue;

  typid = attr->atttypid;


  origval = heap_getattr(tuple, natt + 1, tupdesc, &isnull);

  if (isnull && skip_nulls)
   continue;


  appendStringInfoChar(s, ' ');
  appendStringInfoString(s, quote_identifier(NameStr(attr->attname)));


  appendStringInfoChar(s, '[');
  appendStringInfoString(s, format_type_be(typid));
  appendStringInfoChar(s, ']');


  getTypeOutputInfo(typid,
        &typoutput, &typisvarlena);


  appendStringInfoChar(s, ':');


  if (isnull)
   appendStringInfoString(s, "null");
  else if (typisvarlena && VARATT_IS_EXTERNAL_ONDISK(origval))
   appendStringInfoString(s, "unchanged-toast-datum");
  else if (!typisvarlena)
   print_literal(s, typid,
        OidOutputFunctionCall(typoutput, origval));
  else
  {
   Datum val;

   val = PointerGetDatum(PG_DETOAST_DATUM(origval));
   print_literal(s, typid, OidOutputFunctionCall(typoutput, val));
  }
 }
}
