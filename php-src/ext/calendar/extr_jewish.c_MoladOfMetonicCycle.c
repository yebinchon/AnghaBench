
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;
typedef int zend_long ;


 int HALAKIM_PER_DAY ;
 int HALAKIM_PER_METONIC_CYCLE ;
 int NEW_MOON_OF_CREATION ;

__attribute__((used)) static void MoladOfMetonicCycle(
           int metonicCycle,
           zend_long *pMoladDay,
           zend_long *pMoladHalakim)
{
 register zend_ulong r1, r2, d1, d2;


 r1 = NEW_MOON_OF_CREATION;




 r1 += metonicCycle * (HALAKIM_PER_METONIC_CYCLE & 0xFFFF);
 r2 = r1 >> 16;
 r2 += metonicCycle * ((HALAKIM_PER_METONIC_CYCLE >> 16) & 0xFFFF);




 d2 = r2 / HALAKIM_PER_DAY;
 r2 -= d2 * HALAKIM_PER_DAY;
 r1 = (r2 << 16) | (r1 & 0xFFFF);
 d1 = r1 / HALAKIM_PER_DAY;
 r1 -= d1 * HALAKIM_PER_DAY;

 *pMoladDay = (d2 << 16) | d1;
 *pMoladHalakim = r1;
}
