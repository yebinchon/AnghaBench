
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int FmgrInfo ;


 int GET_FLOAT_DISTANCE (int ,void const*,void const*) ;
 int int64 ;

__attribute__((used)) static float8
gbt_int8_dist(const void *a, const void *b, FmgrInfo *flinfo)
{
 return GET_FLOAT_DISTANCE(int64, a, b);
}
