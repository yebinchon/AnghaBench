
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int Record; int CacheLink; } ;
typedef TYPE_1__* PRESOLVER_CACHE_ENTRY ;


 int DPRINT (char*,TYPE_1__*) ;
 int DnsFreeRecordList ;
 int DnsRecordListFree (int ,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int RemoveEntryList (int *) ;

VOID
DnsIntCacheRemoveEntryItem(PRESOLVER_CACHE_ENTRY CacheEntry)
{
    DPRINT("DnsIntCacheRemoveEntryItem %p\n", CacheEntry);


    RemoveEntryList(&CacheEntry->CacheLink);


    DnsRecordListFree(CacheEntry->Record, DnsFreeRecordList);


    HeapFree(GetProcessHeap(), 0, CacheEntry);
}
