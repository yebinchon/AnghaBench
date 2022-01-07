
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Bitmapset ;


 int initStringInfo (TYPE_1__*) ;
 int outBitmapset (TYPE_1__*,int const*) ;

char *
bmsToString(const Bitmapset *bms)
{
 StringInfoData str;


 initStringInfo(&str);
 outBitmapset(&str, bms);
 return str.data;
}
