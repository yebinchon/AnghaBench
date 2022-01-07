
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;


 int HALAKIM_PER_DAY ;
 int HALAKIM_PER_LUNAR_CYCLE ;
 scalar_t__ HALAKIM_PER_METONIC_CYCLE ;
 int MoladOfMetonicCycle (int,int*,int*) ;
 int* monthsPerYear ;

__attribute__((used)) static void FindTishriMolad(
          zend_long inputDay,
          int *pMetonicCycle,
          int *pMetonicYear,
          zend_long *pMoladDay,
          zend_long *pMoladHalakim)
{
 zend_long moladDay;
 zend_long moladHalakim;
 int metonicCycle;
 int metonicYear;





 metonicCycle = (inputDay + 310) / 6940;


 MoladOfMetonicCycle(metonicCycle, &moladDay, &moladHalakim);





 while (moladDay < inputDay - 6940 + 310) {
  metonicCycle++;
  moladHalakim += HALAKIM_PER_METONIC_CYCLE;
  moladDay += moladHalakim / HALAKIM_PER_DAY;
  moladHalakim = moladHalakim % HALAKIM_PER_DAY;
 }


 for (metonicYear = 0; metonicYear < 18; metonicYear++) {
  if (moladDay > inputDay - 74) {
   break;
  }
  moladHalakim += HALAKIM_PER_LUNAR_CYCLE * monthsPerYear[metonicYear];
  moladDay += moladHalakim / HALAKIM_PER_DAY;
  moladHalakim = moladHalakim % HALAKIM_PER_DAY;
 }

 *pMetonicCycle = metonicCycle;
 *pMetonicYear = metonicYear;
 *pMoladDay = moladDay;
 *pMoladHalakim = moladHalakim;
}
