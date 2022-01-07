
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int century_value (int) ;
 int* m_table_common ;
 int* m_table_leap ;
 int positive_mod (int,int) ;
 scalar_t__ timelib_is_leap (int) ;

__attribute__((used)) static timelib_sll timelib_day_of_week_ex(timelib_sll y, timelib_sll m, timelib_sll d, int iso)
{
 timelib_sll c1, y1, m1, dow;




 c1 = century_value(y / 100);
 y1 = positive_mod(y, 100);
 m1 = timelib_is_leap(y) ? m_table_leap[m] : m_table_common[m];
 dow = positive_mod((c1 + y1 + m1 + (y1 / 4) + d), 7);
 if (iso) {
  if (dow == 0) {
   dow = 7;
  }
 }
 return dow;
}
