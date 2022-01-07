
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeType ;


 int VARSIZE (int const*) ;

char
range_get_flags(const RangeType *range)
{

 return *((char *) range + VARSIZE(range) - 1);
}
