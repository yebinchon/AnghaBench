
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TypeCacheEnumData ;
struct TYPE_6__ {int type_id; int * enumData; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_7__ {scalar_t__ sort_order; } ;
typedef int Oid ;
typedef TYPE_2__ EnumItem ;


 int ERROR ;
 int elog (int ,char*,int ,int ) ;
 scalar_t__ enum_known_sorted (int *,int ) ;
 TYPE_2__* find_enumitem (int *,int ) ;
 int format_type_be (int ) ;
 int load_enum_cache_data (TYPE_1__*) ;

int
compare_values_of_enum(TypeCacheEntry *tcache, Oid arg1, Oid arg2)
{
 TypeCacheEnumData *enumdata;
 EnumItem *item1;
 EnumItem *item2;





 if (arg1 == arg2)
  return 0;


 if (tcache->enumData == ((void*)0))
  load_enum_cache_data(tcache);
 enumdata = tcache->enumData;




 if (enum_known_sorted(enumdata, arg1) &&
  enum_known_sorted(enumdata, arg2))
 {
  if (arg1 < arg2)
   return -1;
  else
   return 1;
 }




 item1 = find_enumitem(enumdata, arg1);
 item2 = find_enumitem(enumdata, arg2);

 if (item1 == ((void*)0) || item2 == ((void*)0))
 {





  load_enum_cache_data(tcache);
  enumdata = tcache->enumData;

  item1 = find_enumitem(enumdata, arg1);
  item2 = find_enumitem(enumdata, arg2);





  if (item1 == ((void*)0))
   elog(ERROR, "enum value %u not found in cache for enum %s",
     arg1, format_type_be(tcache->type_id));
  if (item2 == ((void*)0))
   elog(ERROR, "enum value %u not found in cache for enum %s",
     arg2, format_type_be(tcache->type_id));
 }

 if (item1->sort_order < item2->sort_order)
  return -1;
 else if (item1->sort_order > item2->sort_order)
  return 1;
 else
  return 0;
}
