
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;


 int HALAKIM_PER_DAY ;
 int HALAKIM_PER_LUNAR_CYCLE ;
 int MoladOfMetonicCycle (int,int*,int*) ;
 int Tishri1 (int,int,int) ;
 int* yearOffset ;

__attribute__((used)) static void FindStartOfYear(
          int year,
          int *pMetonicCycle,
          int *pMetonicYear,
          zend_long *pMoladDay,
          zend_long *pMoladHalakim,
          int *pTishri1)
{
 *pMetonicCycle = (year - 1) / 19;
 *pMetonicYear = (year - 1) % 19;
 MoladOfMetonicCycle(*pMetonicCycle, pMoladDay, pMoladHalakim);

 *pMoladHalakim += HALAKIM_PER_LUNAR_CYCLE * yearOffset[*pMetonicYear];
 *pMoladDay += *pMoladHalakim / HALAKIM_PER_DAY;
 *pMoladHalakim = *pMoladHalakim % HALAKIM_PER_DAY;

 *pTishri1 = Tishri1(*pMetonicYear, *pMoladDay, *pMoladHalakim);
}
