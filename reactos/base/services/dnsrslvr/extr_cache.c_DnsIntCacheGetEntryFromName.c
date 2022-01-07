
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_10__ {TYPE_2__ RecordList; } ;
struct TYPE_9__ {int pName; } ;
struct TYPE_7__ {TYPE_3__* Record; } ;
typedef TYPE_1__* PRESOLVER_CACHE_ENTRY ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int * PDNS_RECORDW ;
typedef int LPCWSTR ;
typedef int BOOL ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int CacheLink ;
 int DPRINT (char*,int ,int **) ;
 TYPE_4__ DnsCache ;
 int DnsCacheLock () ;
 int DnsCacheUnlock () ;
 int DnsCharSetUnicode ;
 int * DnsRecordSetCopyEx (TYPE_3__*,int ,int ) ;
 int FALSE ;
 int RESOLVER_CACHE_ENTRY ;
 int TRUE ;
 scalar_t__ _wcsicmp (int ,int ) ;

BOOL
DnsIntCacheGetEntryFromName(LPCWSTR Name,
                            PDNS_RECORDW *Record)
{
    BOOL Ret = FALSE;
    PRESOLVER_CACHE_ENTRY CacheEntry;
    PLIST_ENTRY NextEntry;

    DPRINT("DnsIntCacheGetEntryFromName %ws %p\n", Name, Record);


    *Record = ((void*)0);


    DnsCacheLock();


    NextEntry = DnsCache.RecordList.Flink;
    while (NextEntry != &DnsCache.RecordList)
    {

        CacheEntry = CONTAINING_RECORD(NextEntry, RESOLVER_CACHE_ENTRY, CacheLink);


        if (_wcsicmp(CacheEntry->Record->pName, Name) == 0)
        {

            *Record = DnsRecordSetCopyEx(CacheEntry->Record, DnsCharSetUnicode, DnsCharSetUnicode);
            Ret = TRUE;
            break;
        }

        NextEntry = NextEntry->Flink;
    }


    DnsCacheUnlock();


    return Ret;
}
