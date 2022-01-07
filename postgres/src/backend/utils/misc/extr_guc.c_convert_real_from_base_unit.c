
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* unit; int base_unit; double multiplier; } ;
typedef TYPE_1__ unit_conversion ;


 int Assert (int ) ;
 int GUC_UNIT_MEMORY ;
 int fabs (double) ;
 TYPE_1__* memory_unit_conversion_table ;
 double rint (double) ;
 TYPE_1__* time_unit_conversion_table ;

__attribute__((used)) static void
convert_real_from_base_unit(double base_value, int base_unit,
       double *value, const char **unit)
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
   *value = base_value / table[i].multiplier;
   *unit = table[i].unit;
   if (*value > 0 &&
    fabs((rint(*value) / *value) - 1.0) <= 1e-8)
    break;
  }
 }

 Assert(*unit != ((void*)0));
}
