
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16 ;
typedef int FmgrInfo ;



__attribute__((used)) static bool
gbt_int2lt(const void *a, const void *b, FmgrInfo *flinfo)
{
 return (*((const int16 *) a) < *((const int16 *) b));
}
