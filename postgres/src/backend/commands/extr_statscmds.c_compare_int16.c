
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;



__attribute__((used)) static int
compare_int16(const void *a, const void *b)
{
 int av = *(const int16 *) a;
 int bv = *(const int16 *) b;


 return (av - bv);
}
