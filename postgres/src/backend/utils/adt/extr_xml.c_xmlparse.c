
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmltype ;
typedef int xmlDocPtr ;
typedef int text ;
typedef int XmlOptionType ;


 int GetDatabaseEncoding () ;
 int NO_XML_SUPPORT () ;
 int xmlFreeDoc (int ) ;
 int xml_parse (int *,int ,int,int ) ;

xmltype *
xmlparse(text *data, XmlOptionType xmloption_arg, bool preserve_whitespace)
{
 NO_XML_SUPPORT();
 return ((void*)0);

}
