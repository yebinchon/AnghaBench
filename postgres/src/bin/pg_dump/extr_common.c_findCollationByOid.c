
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int CollInfo ;


 int collinfoindex ;
 scalar_t__ findObjectByOid (int ,int ,int ) ;
 int numCollations ;

CollInfo *
findCollationByOid(Oid oid)
{
 return (CollInfo *) findObjectByOid(oid, collinfoindex, numCollations);
}
