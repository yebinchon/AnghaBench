
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;
typedef int FmgrInfo ;



__attribute__((used)) static bool
gbt_int8eq(const void *a, const void *b, FmgrInfo *flinfo)
{
 return (*((const int64 *) a) == *((const int64 *) b));
}
