
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int appendStringInfoString (TYPE_1__*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int map_sql_identifier_to_xml_name (char const*,int,int) ;

__attribute__((used)) static char *
map_multipart_sql_identifier_to_xml_name(const char *a, const char *b, const char *c, const char *d)
{
 StringInfoData result;

 initStringInfo(&result);

 if (a)
  appendStringInfoString(&result,
          map_sql_identifier_to_xml_name(a, 1, 1));
 if (b)
  appendStringInfo(&result, ".%s",
       map_sql_identifier_to_xml_name(b, 1, 1));
 if (c)
  appendStringInfo(&result, ".%s",
       map_sql_identifier_to_xml_name(c, 1, 1));
 if (d)
  appendStringInfo(&result, ".%s",
       map_sql_identifier_to_xml_name(d, 1, 1));

 return result.data;
}
