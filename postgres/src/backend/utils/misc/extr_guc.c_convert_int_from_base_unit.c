
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* unit; int base_unit; double multiplier; } ;
typedef TYPE_1__ unit_conversion ;
typedef int int64 ;


 int Assert (int ) ;
 int GUC_UNIT_MEMORY ;
 TYPE_1__* memory_unit_conversion_table ;
 scalar_t__ rint (int) ;
 TYPE_1__* time_unit_conversion_table ;

__attribute__((used)) static void
convert_int_from_base_unit(int64 base_value, int base_unit,
         int64 *value, const char **unit)
{
 const unit_conversion *table;
 int i;

 *unit = ((void*)0);

 if (base_unit & GUC_UNIT_MEMORY)
  table = memory_unit_conversion_table;
 else
  table = time_unit_conversion_table;

 for (i = 0; *table[i].unit; i++)
 {
  if (base_unit == table[i].base_unit)
  {





   if (table[i].multiplier <= 1.0 ||
    base_value % (int64) table[i].multiplier == 0)
   {
    *value = (int64) rint(base_value / table[i].multiplier);
    *unit = table[i].unit;
    break;
   }
  }
 }

 Assert(*unit != ((void*)0));
}
