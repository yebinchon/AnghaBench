
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_12__ {TYPE_1__* prodesc; } ;
struct TYPE_11__ {int atttypid; int attname; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_10__ {int natts; } ;
struct TYPE_9__ {int trftypes; int lang_oid; } ;
typedef int SV ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int HV ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 char* NameStr (int ) ;
 int OidFunctionCall1 (int ,int ) ;
 scalar_t__ OidIsValid (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 TYPE_3__* TupleDescAttr (TYPE_2__*,int) ;
 int check_stack_depth () ;
 int * cstr2sv (char*) ;
 TYPE_6__* current_call_data ;
 int dTHX ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int get_base_element_type (int ) ;
 int get_transform_fromsql (int ,int ,int ) ;
 int heap_getattr (int ,int,TYPE_2__*,int*) ;
 int hv_ksplit (int *,int) ;
 int hv_store_string (int *,char*,int *) ;
 int * newHV () ;
 int * newRV_noinc (int *) ;
 int * newSV (int ) ;
 int pfree (char*) ;
 int * plperl_hash_from_datum (int ) ;
 int * plperl_ref_from_pg_array (int ,int ) ;
 scalar_t__ type_is_rowtype (int ) ;

__attribute__((used)) static SV *
plperl_hash_from_tuple(HeapTuple tuple, TupleDesc tupdesc, bool include_generated)
{
 dTHX;
 HV *hv;
 int i;


 check_stack_depth();

 hv = newHV();
 hv_ksplit(hv, tupdesc->natts);

 for (i = 0; i < tupdesc->natts; i++)
 {
  Datum attr;
  bool isnull,
     typisvarlena;
  char *attname;
  Oid typoutput;
  Form_pg_attribute att = TupleDescAttr(tupdesc, i);

  if (att->attisdropped)
   continue;

  if (att->attgenerated)
  {

   if (!include_generated)
    continue;
  }

  attname = NameStr(att->attname);
  attr = heap_getattr(tuple, i + 1, tupdesc, &isnull);

  if (isnull)
  {





   hv_store_string(hv, attname, newSV(0));
   continue;
  }

  if (type_is_rowtype(att->atttypid))
  {
   SV *sv = plperl_hash_from_datum(attr);

   hv_store_string(hv, attname, sv);
  }
  else
  {
   SV *sv;
   Oid funcid;

   if (OidIsValid(get_base_element_type(att->atttypid)))
    sv = plperl_ref_from_pg_array(attr, att->atttypid);
   else if ((funcid = get_transform_fromsql(att->atttypid, current_call_data->prodesc->lang_oid, current_call_data->prodesc->trftypes)))
    sv = (SV *) DatumGetPointer(OidFunctionCall1(funcid, attr));
   else
   {
    char *outputstr;


    getTypeOutputInfo(att->atttypid, &typoutput, &typisvarlena);

    outputstr = OidOutputFunctionCall(typoutput, attr);
    sv = cstr2sv(outputstr);
    pfree(outputstr);
   }

   hv_store_string(hv, attname, sv);
  }
 }
 return newRV_noinc((SV *) hv);
}
