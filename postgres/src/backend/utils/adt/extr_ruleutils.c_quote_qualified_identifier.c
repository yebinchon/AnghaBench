
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
 int quote_identifier (char const*) ;

char *
quote_qualified_identifier(const char *qualifier,
         const char *ident)
{
 StringInfoData buf;

 initStringInfo(&buf);
 if (qualifier)
  appendStringInfo(&buf, "%s.", quote_identifier(qualifier));
 appendStringInfoString(&buf, quote_identifier(ident));
 return buf.data;
}
