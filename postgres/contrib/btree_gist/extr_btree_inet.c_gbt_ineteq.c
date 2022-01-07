
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FmgrInfo ;



__attribute__((used)) static bool
gbt_ineteq(const void *a, const void *b, FmgrInfo *flinfo)
{
 return (*((const double *) a) == *((const double *) b));
}
