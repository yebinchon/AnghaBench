
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ oprnamespace; int oprname; } ;
typedef int StringInfo ;
typedef TYPE_1__* Form_pg_operator ;


 char* NameStr (int ) ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 int appendStringInfo (int ,char*,int ,char*) ;
 int appendStringInfoString (int ,char*) ;
 char* get_namespace_name (scalar_t__) ;
 int quote_identifier (char const*) ;

__attribute__((used)) static void
deparseOperatorName(StringInfo buf, Form_pg_operator opform)
{
 char *opname;


 opname = NameStr(opform->oprname);


 if (opform->oprnamespace != PG_CATALOG_NAMESPACE)
 {
  const char *opnspname;

  opnspname = get_namespace_name(opform->oprnamespace);

  appendStringInfo(buf, "OPERATOR(%s.%s)",
       quote_identifier(opnspname), opname);
 }
 else
 {

  appendStringInfoString(buf, opname);
 }
}
