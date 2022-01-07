
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int* ml_table_common ;
 int* ml_table_leap ;
 int timelib_daynr_from_weeknr (int,int,int) ;
 int timelib_is_leap (int) ;

void timelib_date_from_isodate(timelib_sll iy, timelib_sll iw, timelib_sll id, timelib_sll *y, timelib_sll *m, timelib_sll *d)
{
 timelib_sll daynr = timelib_daynr_from_weeknr(iy, iw, id) + 1;
 int *table;
 bool is_leap_year;


 *y = iy;
 is_leap_year = timelib_is_leap(*y);


 while (daynr <= 0) {
  *y -= 1;
  daynr += (is_leap_year = timelib_is_leap(*y)) ? 366 : 365;
 }


 while (daynr > (is_leap_year ? 366 : 365)) {
  daynr -= is_leap_year ? 366 : 365;
  *y += 1;
  is_leap_year = timelib_is_leap(*y);
 }

 table = is_leap_year ? ml_table_leap : ml_table_common;


 *m = 1;
 while (daynr > table[*m]) {
  daynr -= table[*m];
  *m += 1;
 }

 *d = daynr;
}
