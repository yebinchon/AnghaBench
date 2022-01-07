
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct ScanKeyData {int dummy; } ;
typedef int TableScanDesc ;
struct TYPE_7__ {TYPE_1__* rd_tableam; } ;
struct TYPE_6__ {int (* scan_begin ) (TYPE_2__*,int ,int,struct ScanKeyData*,int *,int) ;} ;
typedef int Snapshot ;
typedef TYPE_2__* Relation ;
typedef int Oid ;


 int GetCatalogSnapshot (int ) ;
 int RegisterSnapshot (int ) ;
 int RelationGetRelid (TYPE_2__*) ;
 int SO_ALLOW_PAGEMODE ;
 int SO_ALLOW_STRAT ;
 int SO_ALLOW_SYNC ;
 int SO_TEMP_SNAPSHOT ;
 int SO_TYPE_SEQSCAN ;
 int stub1 (TYPE_2__*,int ,int,struct ScanKeyData*,int *,int) ;

TableScanDesc
table_beginscan_catalog(Relation relation, int nkeys, struct ScanKeyData *key)
{
 uint32 flags = SO_TYPE_SEQSCAN |
 SO_ALLOW_STRAT | SO_ALLOW_SYNC | SO_ALLOW_PAGEMODE | SO_TEMP_SNAPSHOT;
 Oid relid = RelationGetRelid(relation);
 Snapshot snapshot = RegisterSnapshot(GetCatalogSnapshot(relid));

 return relation->rd_tableam->scan_begin(relation, snapshot, nkeys, key,
           ((void*)0), flags);
}
