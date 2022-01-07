
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_long ;


 int FindTishriMolad (scalar_t__,int*,int*,scalar_t__*,scalar_t__*) ;
 scalar_t__ HALAKIM_PER_DAY ;
 scalar_t__ HALAKIM_PER_LUNAR_CYCLE ;
 scalar_t__ JEWISH_SDN_MAX ;
 scalar_t__ JEWISH_SDN_OFFSET ;
 int Tishri1 (int,scalar_t__,scalar_t__) ;
 scalar_t__* monthsPerYear ;

void SdnToJewish(
     zend_long sdn,
     int *pYear,
     int *pMonth,
     int *pDay)
{
 zend_long inputDay;
 zend_long day;
 zend_long halakim;
 int metonicCycle;
 int metonicYear;
 int tishri1;
 int tishri1After;
 int yearLength;

 if (sdn <= JEWISH_SDN_OFFSET || sdn > JEWISH_SDN_MAX) {
  *pYear = 0;
  *pMonth = 0;
  *pDay = 0;
  return;
 }
 inputDay = sdn - JEWISH_SDN_OFFSET;

 FindTishriMolad(inputDay, &metonicCycle, &metonicYear, &day, &halakim);
 tishri1 = Tishri1(metonicYear, day, halakim);

 if (inputDay >= tishri1) {

  *pYear = metonicCycle * 19 + metonicYear + 1;
  if (inputDay < tishri1 + 59) {
   if (inputDay < tishri1 + 30) {
    *pMonth = 1;
    *pDay = inputDay - tishri1 + 1;
   } else {
    *pMonth = 2;
    *pDay = inputDay - tishri1 - 29;
   }
   return;
  }


  halakim += HALAKIM_PER_LUNAR_CYCLE * monthsPerYear[metonicYear];
  day += halakim / HALAKIM_PER_DAY;
  halakim = halakim % HALAKIM_PER_DAY;
  tishri1After = Tishri1((metonicYear + 1) % 19, day, halakim);
 } else {

  *pYear = metonicCycle * 19 + metonicYear;
  if (inputDay >= tishri1 - 177) {

   if (inputDay > tishri1 - 30) {
    *pMonth = 13;
    *pDay = inputDay - tishri1 + 30;
   } else if (inputDay > tishri1 - 60) {
    *pMonth = 12;
    *pDay = inputDay - tishri1 + 60;
   } else if (inputDay > tishri1 - 89) {
    *pMonth = 11;
    *pDay = inputDay - tishri1 + 89;
   } else if (inputDay > tishri1 - 119) {
    *pMonth = 10;
    *pDay = inputDay - tishri1 + 119;
   } else if (inputDay > tishri1 - 148) {
    *pMonth = 9;
    *pDay = inputDay - tishri1 + 148;
   } else {
    *pMonth = 8;
    *pDay = inputDay - tishri1 + 178;
   }
   return;
  } else {
   if (monthsPerYear[(*pYear - 1) % 19] == 13) {
    *pMonth = 7;
    *pDay = inputDay - tishri1 + 207;
    if (*pDay > 0)
     return;
    (*pMonth)--;
    (*pDay) += 30;
    if (*pDay > 0)
     return;
    (*pMonth)--;
    (*pDay) += 30;
   } else {
    *pMonth = 7;
    *pDay = inputDay - tishri1 + 207;
    if (*pDay > 0)
     return;
    (*pMonth) -= 2;
    (*pDay) += 30;
   }
   if (*pDay > 0)
    return;
   (*pMonth)--;
   (*pDay) += 29;
   if (*pDay > 0)
    return;



   tishri1After = tishri1;
   FindTishriMolad(day - 365,
       &metonicCycle, &metonicYear, &day, &halakim);
   tishri1 = Tishri1(metonicYear, day, halakim);
  }
 }

 yearLength = tishri1After - tishri1;
 day = inputDay - tishri1 - 29;
 if (yearLength == 355 || yearLength == 385) {

  if (day <= 30) {
   *pMonth = 2;
   *pDay = day;
   return;
  }
  day -= 30;
 } else {

  if (day <= 29) {
   *pMonth = 2;
   *pDay = day;
   return;
  }
  day -= 29;
 }


 *pMonth = 3;
 *pDay = day;
}
