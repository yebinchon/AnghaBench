
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgXmlStrictness ;
typedef int PgXmlErrorContext ;


 int * pg_xml_init (int ) ;
 int xmlInitParser () ;
 int xmlLoadExtDtdDefaultValue ;
 int xmlSubstituteEntitiesDefault (int) ;

PgXmlErrorContext *
pgxml_parser_init(PgXmlStrictness strictness)
{
 PgXmlErrorContext *xmlerrcxt;


 xmlerrcxt = pg_xml_init(strictness);




 xmlInitParser();

 xmlSubstituteEntitiesDefault(1);
 xmlLoadExtDtdDefaultValue = 1;

 return xmlerrcxt;
}
