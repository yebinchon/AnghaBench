
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ float8 ;
typedef int FmgrInfo ;



__attribute__((used)) static bool
gbt_float8lt(const void *a, const void *b, FmgrInfo *flinfo)
{
 return (*((const float8 *) a) < *((const float8 *) b));
}
