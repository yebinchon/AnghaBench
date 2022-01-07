
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_3__ {scalar_t__ high; } ;
struct TYPE_4__ {scalar_t__ value; TYPE_1__ part; } ;
typedef TYPE_2__ _Int64 ;



float
_TIFFUInt64ToFloat(uint64 ui64)
{
 _Int64 i;

 i.value = ui64;
 if (i.part.high >= 0) {
  return (float)i.value;
 } else {
  long double df;
  df = (long double)i.value;
  df += 18446744073709551616.0;
  return (float)df;
 }
}
