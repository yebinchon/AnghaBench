
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableScanDesc ;
typedef int Relation ;


 int AccessShareLock ;
 int AuthIdRelationId ;
 int ForwardScanDirection ;
 int * heap_getnext (int ,int ) ;
 int table_beginscan_catalog (int ,int ,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static bool
ThereIsAtLeastOneRole(void)
{
 Relation pg_authid_rel;
 TableScanDesc scan;
 bool result;

 pg_authid_rel = table_open(AuthIdRelationId, AccessShareLock);

 scan = table_beginscan_catalog(pg_authid_rel, 0, ((void*)0));
 result = (heap_getnext(scan, ForwardScanDirection) != ((void*)0));

 table_endscan(scan);
 table_close(pg_authid_rel, AccessShareLock);

 return result;
}
