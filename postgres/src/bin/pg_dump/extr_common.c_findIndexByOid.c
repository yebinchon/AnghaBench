
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int IndxInfo ;
typedef int DumpableObject ;


 scalar_t__ findObjectByOid (int ,int **,int) ;

__attribute__((used)) static IndxInfo *
findIndexByOid(Oid oid, DumpableObject **idxinfoindex, int numIndexes)
{
 return (IndxInfo *) findObjectByOid(oid, idxinfoindex, numIndexes);
}
