
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef scalar_t__ int16 ;


 int pg_ltoa (int ,char*) ;

void
pg_itoa(int16 i, char *a)
{
 pg_ltoa((int32) i, a);
}
