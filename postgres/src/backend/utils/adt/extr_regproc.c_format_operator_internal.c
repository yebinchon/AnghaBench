
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ oprright; scalar_t__ oprleft; int oprnamespace; int oprname; } ;
struct TYPE_6__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_operator ;


 int Assert (int) ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int IsBootstrapProcessingMode () ;
 int NAMEDATALEN ;
 char* NameStr (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (int) ;
 int OperatorIsVisible (int) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 char* format_type_be (scalar_t__) ;
 char* format_type_be_qualified (scalar_t__) ;
 char* get_namespace_name (int ) ;
 int initStringInfo (TYPE_1__*) ;
 scalar_t__ palloc (int ) ;
 char* quote_identifier (char*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static char *
format_operator_internal(Oid operator_oid, bool force_qualify)
{
 char *result;
 HeapTuple opertup;

 opertup = SearchSysCache1(OPEROID, ObjectIdGetDatum(operator_oid));

 if (HeapTupleIsValid(opertup))
 {
  Form_pg_operator operform = (Form_pg_operator) GETSTRUCT(opertup);
  char *oprname = NameStr(operform->oprname);
  char *nspname;
  StringInfoData buf;


  Assert(!IsBootstrapProcessingMode());

  initStringInfo(&buf);





  if (force_qualify || !OperatorIsVisible(operator_oid))
  {
   nspname = get_namespace_name(operform->oprnamespace);
   appendStringInfo(&buf, "%s.",
        quote_identifier(nspname));
  }

  appendStringInfo(&buf, "%s(", oprname);

  if (operform->oprleft)
   appendStringInfo(&buf, "%s,",
        force_qualify ?
        format_type_be_qualified(operform->oprleft) :
        format_type_be(operform->oprleft));
  else
   appendStringInfoString(&buf, "NONE,");

  if (operform->oprright)
   appendStringInfo(&buf, "%s)",
        force_qualify ?
        format_type_be_qualified(operform->oprright) :
        format_type_be(operform->oprright));
  else
   appendStringInfoString(&buf, "NONE)");

  result = buf.data;

  ReleaseSysCache(opertup);
 }
 else
 {



  result = (char *) palloc(NAMEDATALEN);
  snprintf(result, NAMEDATALEN, "%u", operator_oid);
 }

 return result;
}
