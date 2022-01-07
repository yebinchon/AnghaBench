
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* values; } ;
struct TYPE_10__ {int pronargs; TYPE_1__ proargtypes; int pronamespace; int proname; } ;
struct TYPE_9__ {char* data; } ;
typedef TYPE_2__ StringInfoData ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_proc ;


 int Assert (int) ;
 scalar_t__ FunctionIsVisible (int) ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int IsBootstrapProcessingMode () ;
 int NAMEDATALEN ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfo (TYPE_2__*,char*,int ) ;
 int appendStringInfoChar (TYPE_2__*,char) ;
 int appendStringInfoString (TYPE_2__*,int ) ;
 int format_type_be (int) ;
 int format_type_be_qualified (int) ;
 char* get_namespace_name (int ) ;
 int initStringInfo (TYPE_2__*) ;
 scalar_t__ palloc (int ) ;
 int quote_qualified_identifier (char*,char*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static char *
format_procedure_internal(Oid procedure_oid, bool force_qualify)
{
 char *result;
 HeapTuple proctup;

 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(procedure_oid));

 if (HeapTupleIsValid(proctup))
 {
  Form_pg_proc procform = (Form_pg_proc) GETSTRUCT(proctup);
  char *proname = NameStr(procform->proname);
  int nargs = procform->pronargs;
  int i;
  char *nspname;
  StringInfoData buf;


  Assert(!IsBootstrapProcessingMode());

  initStringInfo(&buf);





  if (!force_qualify && FunctionIsVisible(procedure_oid))
   nspname = ((void*)0);
  else
   nspname = get_namespace_name(procform->pronamespace);

  appendStringInfo(&buf, "%s(",
       quote_qualified_identifier(nspname, proname));
  for (i = 0; i < nargs; i++)
  {
   Oid thisargtype = procform->proargtypes.values[i];

   if (i > 0)
    appendStringInfoChar(&buf, ',');
   appendStringInfoString(&buf,
           force_qualify ?
           format_type_be_qualified(thisargtype) :
           format_type_be(thisargtype));
  }
  appendStringInfoChar(&buf, ')');

  result = buf.data;

  ReleaseSysCache(proctup);
 }
 else
 {

  result = (char *) palloc(NAMEDATALEN);
  snprintf(result, NAMEDATALEN, "%u", procedure_oid);
 }

 return result;
}
