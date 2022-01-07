
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int xmltype ;
typedef int text ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int ERRCODE_INVALID_XML_PROCESSING_INSTRUCTION ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int NO_XML_SUPPORT () ;
 int appendStringInfo (TYPE_1__*,char*,char const*) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 int * stringinfo_to_xmltype (TYPE_1__*) ;
 char* strspn (char*,char*) ;
 int * strstr (char*,char*) ;
 char* text_to_cstring (int *) ;

xmltype *
xmlpi(const char *target, text *arg, bool arg_is_null, bool *result_is_null)
{
 NO_XML_SUPPORT();
 return ((void*)0);

}
