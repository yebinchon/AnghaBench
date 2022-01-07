
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct cal_entry_t {int num_months; int symbol; int name; int max_days_in_month; int * month_name_short; int * month_name_long; } ;


 int add_assoc_long (int *,char*,int ) ;
 int add_assoc_string (int *,char*,int ) ;
 int add_assoc_zval (int *,char*,int *) ;
 int add_index_string (int *,int,int ) ;
 int array_init (int *) ;
 struct cal_entry_t* cal_conversion_table ;

__attribute__((used)) static void _php_cal_info(int cal, zval *ret)
{
 zval months, smonths;
 int i;
 const struct cal_entry_t *calendar;

 calendar = &cal_conversion_table[cal];
 array_init(ret);

 array_init(&months);
 array_init(&smonths);

 for (i = 1; i <= calendar->num_months; i++) {
  add_index_string(&months, i, calendar->month_name_long[i]);
  add_index_string(&smonths, i, calendar->month_name_short[i]);
 }

 add_assoc_zval(ret, "months", &months);
 add_assoc_zval(ret, "abbrevmonths", &smonths);
 add_assoc_long(ret, "maxdaysinmonth", calendar->max_days_in_month);
 add_assoc_string(ret, "calname", calendar->name);
 add_assoc_string(ret, "calsymbol", calendar->symbol);

}
