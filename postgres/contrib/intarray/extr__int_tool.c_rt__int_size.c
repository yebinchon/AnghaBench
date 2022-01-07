
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArrayType ;


 scalar_t__ ARRNELEMS (int *) ;

void
rt__int_size(ArrayType *a, float *size)
{
 *size = (float) ARRNELEMS(a);
}
