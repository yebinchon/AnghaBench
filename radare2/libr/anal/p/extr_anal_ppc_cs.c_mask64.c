
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int UT64_MAX ;

__attribute__((used)) static ut64 mask64(ut64 mb, ut64 me) {
 ut64 maskmb = UT64_MAX >> mb;
 ut64 maskme = UT64_MAX << (63 - me);
 return (mb <= me) ? maskmb & maskme : maskmb | maskme;
}
