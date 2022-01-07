
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* Flink; } ;
struct TYPE_11__ {TYPE_3__ RecordList; } ;
struct TYPE_9__ {TYPE_1__* Record; } ;
struct TYPE_8__ {int pName; } ;
typedef TYPE_2__* PRESOLVER_CACHE_ENTRY ;
typedef TYPE_3__* PLIST_ENTRY ;
typedef int LPCWSTR ;
typedef int BOOL ;


 TYPE_2__* CONTAINING_RECORD (TYPE_3__*,int ,int ) ;
 int CacheLink ;
 int DPRINT (char*,int ) ;
 TYPE_5__ DnsCache ;
 int DnsCacheLock () ;
 int DnsCacheUnlock () ;
 int DnsIntCacheRemoveEntryItem (TYPE_2__*) ;
 int FALSE ;
 int RESOLVER_CACHE_ENTRY ;
 int TRUE ;
 scalar_t__ _wcsicmp (int ,int ) ;

BOOL
DnsIntCacheRemoveEntryByName(LPCWSTR Name)
{
    BOOL Ret = FALSE;
    PRESOLVER_CACHE_ENTRY CacheEntry;
    PLIST_ENTRY NextEntry;

    DPRINT("DnsIntCacheRemoveEntryByName %ws\n", Name);


    DnsCacheLock();


    NextEntry = DnsCache.RecordList.Flink;
    while (NextEntry != &DnsCache.RecordList)
    {

        CacheEntry = CONTAINING_RECORD(NextEntry, RESOLVER_CACHE_ENTRY, CacheLink);


        if (_wcsicmp(CacheEntry->Record->pName, Name) == 0)
        {

            DnsIntCacheRemoveEntryItem(CacheEntry);
            Ret = TRUE;
            break;
        }

        NextEntry = NextEntry->Flink;
    }


    DnsCacheUnlock();


    return Ret;
}
