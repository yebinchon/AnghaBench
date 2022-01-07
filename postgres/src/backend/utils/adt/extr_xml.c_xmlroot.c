
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmltype ;
typedef int xmlChar ;
typedef int text ;
typedef int StringInfoData ;


 int NO_XML_SUPPORT () ;
 size_t VARHDRSZ ;
 size_t VARSIZE (int *) ;




 int appendStringInfoString (int *,char*) ;
 int initStringInfo (int *) ;
 int parse_xml_decl (int *,size_t*,int **,int *,int*) ;
 int print_xml_decl (int *,int *,int ,int) ;
 int * stringinfo_to_xmltype (int *) ;
 char* text_to_cstring (int *) ;
 int * xml_text2xmlChar (int *) ;

xmltype *
xmlroot(xmltype *data, text *version, int standalone)
{
 NO_XML_SUPPORT();
 return ((void*)0);

}
