
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bitmap_base; int sorted_values; } ;
typedef TYPE_1__ TypeCacheEnumData ;
typedef scalar_t__ Oid ;


 scalar_t__ INT_MAX ;
 int bms_is_member (int,int ) ;

__attribute__((used)) static inline bool
enum_known_sorted(TypeCacheEnumData *enumdata, Oid arg)
{
 Oid offset;

 if (arg < enumdata->bitmap_base)
  return 0;
 offset = arg - enumdata->bitmap_base;
 if (offset > (Oid) INT_MAX)
  return 0;
 return bms_is_member((int) offset, enumdata->sorted_values);
}
