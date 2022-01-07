
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base_unit; double multiplier; scalar_t__* unit; } ;
typedef TYPE_1__ unit_conversion ;


 int GUC_UNIT_MEMORY ;
 int MAX_UNIT_LEN ;
 scalar_t__ isspace (unsigned char) ;
 TYPE_1__* memory_unit_conversion_table ;
 double rint (double) ;
 scalar_t__ strcmp (char*,scalar_t__*) ;
 TYPE_1__* time_unit_conversion_table ;

__attribute__((used)) static bool
convert_to_base_unit(double value, const char *unit,
      int base_unit, double *base_value)
{
 char unitstr[MAX_UNIT_LEN + 1];
 int unitlen;
 const unit_conversion *table;
 int i;


 unitlen = 0;
 while (*unit != '\0' && !isspace((unsigned char) *unit) &&
     unitlen < MAX_UNIT_LEN)
  unitstr[unitlen++] = *(unit++);
 unitstr[unitlen] = '\0';

 while (isspace((unsigned char) *unit))
  unit++;
 if (*unit != '\0')
  return 0;


 if (base_unit & GUC_UNIT_MEMORY)
  table = memory_unit_conversion_table;
 else
  table = time_unit_conversion_table;

 for (i = 0; *table[i].unit; i++)
 {
  if (base_unit == table[i].base_unit &&
   strcmp(unitstr, table[i].unit) == 0)
  {
   double cvalue = value * table[i].multiplier;






   if (*table[i + 1].unit &&
    base_unit == table[i + 1].base_unit)
    cvalue = rint(cvalue / table[i + 1].multiplier) *
     table[i + 1].multiplier;

   *base_value = cvalue;
   return 1;
  }
 }
 return 0;
}
