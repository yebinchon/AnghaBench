
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int num_values; int enum_values; } ;
typedef TYPE_1__ TypeCacheEnumData ;
struct TYPE_8__ {int enum_oid; } ;
typedef int Oid ;
typedef TYPE_2__ EnumItem ;


 TYPE_2__* bsearch (TYPE_2__*,int ,int ,int,int ) ;
 int enum_oid_cmp ;

__attribute__((used)) static EnumItem *
find_enumitem(TypeCacheEnumData *enumdata, Oid arg)
{
 EnumItem srch;


 if (enumdata->num_values <= 0)
  return ((void*)0);

 srch.enum_oid = arg;
 return bsearch(&srch, enumdata->enum_values, enumdata->num_values,
       sizeof(EnumItem), enum_oid_cmp);
}
