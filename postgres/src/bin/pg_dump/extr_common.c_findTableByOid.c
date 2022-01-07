
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableInfo ;
typedef int Oid ;


 scalar_t__ findObjectByOid (int ,int ,int ) ;
 int numTables ;
 int tblinfoindex ;

TableInfo *
findTableByOid(Oid oid)
{
 return (TableInfo *) findObjectByOid(oid, tblinfoindex, numTables);
}
