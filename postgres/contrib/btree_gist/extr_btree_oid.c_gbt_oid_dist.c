
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef scalar_t__ Oid ;
typedef int FmgrInfo ;



__attribute__((used)) static float8
gbt_oid_dist(const void *a, const void *b, FmgrInfo *flinfo)
{
 Oid aa = *(const Oid *) a;
 Oid bb = *(const Oid *) b;

 if (aa < bb)
  return (float8) (bb - aa);
 else
  return (float8) (aa - bb);
}
