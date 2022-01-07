
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmltype ;
typedef int xmlChar ;
typedef int text ;
typedef int pg_enc ;
struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int ERRCODE_INTERNAL_ERROR ;
 int WARNING ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int initStringInfo (TYPE_1__*) ;
 int parse_xml_decl (int *,size_t*,int **,int *,int*) ;
 int pfree (char*) ;
 int print_xml_decl (TYPE_1__*,int *,int ,int) ;
 size_t strlen (char*) ;
 char* text_to_cstring (int *) ;
 int xml_ereport_by_code (int ,int ,char*,int) ;

__attribute__((used)) static char *
xml_out_internal(xmltype *x, pg_enc target_encoding)
{
 char *str = text_to_cstring((text *) x);
 return str;
}
