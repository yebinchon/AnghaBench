
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendStringInfo (TYPE_1__*,char*,int) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int initStringInfo (TYPE_1__*) ;

__attribute__((used)) static char *
make_temptable_name_n(char *tempname, int n)
{
 StringInfoData namebuf;

 initStringInfo(&namebuf);
 appendStringInfoString(&namebuf, tempname);
 appendStringInfo(&namebuf, "_%d", n);
 return namebuf.data;
}
