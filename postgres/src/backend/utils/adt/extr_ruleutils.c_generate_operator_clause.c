
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char oprkind; scalar_t__ oprleft; scalar_t__ oprright; int oprnamespace; int oprname; } ;
typedef int StringInfo ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_operator ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int add_cast_to (int ,scalar_t__) ;
 int appendStringInfo (int ,char*,char const*) ;
 int appendStringInfoString (int ,char const*) ;
 int elog (int ,char*,scalar_t__) ;
 char* get_namespace_name (int ) ;
 char const* quote_identifier (char*) ;

void
generate_operator_clause(StringInfo buf,
       const char *leftop, Oid leftoptype,
       Oid opoid,
       const char *rightop, Oid rightoptype)
{
 HeapTuple opertup;
 Form_pg_operator operform;
 char *oprname;
 char *nspname;

 opertup = SearchSysCache1(OPEROID, ObjectIdGetDatum(opoid));
 if (!HeapTupleIsValid(opertup))
  elog(ERROR, "cache lookup failed for operator %u", opoid);
 operform = (Form_pg_operator) GETSTRUCT(opertup);
 Assert(operform->oprkind == 'b');
 oprname = NameStr(operform->oprname);

 nspname = get_namespace_name(operform->oprnamespace);

 appendStringInfoString(buf, leftop);
 if (leftoptype != operform->oprleft)
  add_cast_to(buf, operform->oprleft);
 appendStringInfo(buf, " OPERATOR(%s.", quote_identifier(nspname));
 appendStringInfoString(buf, oprname);
 appendStringInfo(buf, ") %s", rightop);
 if (rightoptype != operform->oprright)
  add_cast_to(buf, operform->oprright);

 ReleaseSysCache(opertup);
}
