
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int initStringInfo (TYPE_1__*) ;
 int outNode (TYPE_1__*,void const*) ;

char *
nodeToString(const void *obj)
{
 StringInfoData str;


 initStringInfo(&str);
 outNode(&str, obj);
 return str.data;
}
