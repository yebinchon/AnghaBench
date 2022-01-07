
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
typedef TYPE_1__* XML_ELEM_ERROR ;
typedef int * XMLRPC_VALUE ;
typedef int XMLRPC_ERROR_CODE ;
struct TYPE_3__ {int parser_code; int byte_index; int column; int line; } ;


 int * XMLRPC_UtilityCreateFault (int ,char*) ;


 int snprintf (char*,int,char*,int ,int ,int ) ;
 int xmlrpc_error_parse_bad_encoding ;
 int xmlrpc_error_parse_unknown_encoding ;
 int xmlrpc_error_parse_xml_syntax ;

__attribute__((used)) static XMLRPC_VALUE map_expat_errors(XML_ELEM_ERROR error) {
   XMLRPC_VALUE xReturn = ((void*)0);
   if(error) {
      XMLRPC_ERROR_CODE code;
      char buf[1024];
      snprintf(buf, sizeof(buf),
               "error occurred at line %ld, column %ld, byte index %ld",
      error->line, error->column, error->byte_index);


      switch(error->parser_code) {
      case 128:
         code = xmlrpc_error_parse_unknown_encoding;
         break;
      case 129:
         code = xmlrpc_error_parse_bad_encoding;
         break;
      default:
         code = xmlrpc_error_parse_xml_syntax;
         break;
      }
      xReturn = XMLRPC_UtilityCreateFault(code, buf);
   }
   return xReturn;
}
