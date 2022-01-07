
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int UT32_MAX ;

__attribute__((used)) static ut32 mask32(ut32 mb, ut32 me) {
 ut32 maskmb = UT32_MAX >> mb;
 ut32 maskme = UT32_MAX << (31 - me);
 return (mb <= me) ? maskmb & maskme : maskmb | maskme;
}
