
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ float8 ;


 scalar_t__ palloc (int) ;

float8 *
add_one_float8(float8 *arg)
{
 float8 *result = (float8 *) palloc(sizeof(float8));

 *result = *arg + 1.0;

 return result;
}
