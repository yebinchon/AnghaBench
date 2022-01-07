
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zic_t ;


 scalar_t__ ZIC_MAX ;
 scalar_t__ ZIC_MIN ;
 int time_overflow () ;

__attribute__((used)) static zic_t
oadd(zic_t t1, zic_t t2)
{
 if (t1 < 0 ? t2 < ZIC_MIN - t1 : ZIC_MAX - t1 < t2)
  time_overflow();
 return t1 + t2;
}
