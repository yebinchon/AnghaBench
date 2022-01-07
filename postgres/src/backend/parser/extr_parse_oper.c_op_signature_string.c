
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Oid ;
typedef int List ;


 int NameListToString (int *) ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int appendStringInfoString (TYPE_1__*,int ) ;
 int format_type_be (int ) ;
 int initStringInfo (TYPE_1__*) ;

__attribute__((used)) static const char *
op_signature_string(List *op, char oprkind, Oid arg1, Oid arg2)
{
 StringInfoData argbuf;

 initStringInfo(&argbuf);

 if (oprkind != 'l')
  appendStringInfo(&argbuf, "%s ", format_type_be(arg1));

 appendStringInfoString(&argbuf, NameListToString(op));

 if (oprkind != 'r')
  appendStringInfo(&argbuf, " %s", format_type_be(arg2));

 return argbuf.data;
}
