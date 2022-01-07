
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ float4 ;
typedef int FmgrInfo ;



__attribute__((used)) static bool
gbt_float4lt(const void *a, const void *b, FmgrInfo *flinfo)
{
 return (*((const float4 *) a) < *((const float4 *) b));
}
