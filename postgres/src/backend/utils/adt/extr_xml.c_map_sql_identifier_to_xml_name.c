
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ pg_wchar ;
struct TYPE_6__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int Assert (int) ;
 int NO_XML_SUPPORT () ;
 int appendBinaryStringInfo (TYPE_1__*,char const*,int ) ;
 int appendStringInfo (TYPE_1__*,char*,unsigned int) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int initStringInfo (TYPE_1__*) ;
 int is_valid_xml_namechar (scalar_t__) ;
 int is_valid_xml_namefirst (scalar_t__) ;
 int pg_mblen (char const*) ;
 scalar_t__ pg_strncasecmp (char const*,char*,int) ;
 scalar_t__ sqlchar_to_unicode (char const*) ;

char *
map_sql_identifier_to_xml_name(const char *ident, bool fully_escaped,
          bool escape_period)
{
 NO_XML_SUPPORT();
 return ((void*)0);

}
