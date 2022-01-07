
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int IndexScanDesc ;


 int RelationGetIndexScan (int ,int,int) ;

__attribute__((used)) static IndexScanDesc
dibeginscan(Relation r, int nkeys, int norderbys)
{
 IndexScanDesc scan;


 scan = RelationGetIndexScan(r, nkeys, norderbys);
 return scan;
}
