
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; int info; int subject; } ;
typedef TYPE_1__ WINE_SIP_PROVIDER ;
typedef int SIP_DISPATCH_INFO ;
typedef int GUID ;


 TYPE_1__* CryptMemAlloc (int) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int list_add_tail (int *,int *) ;
 int providers ;
 int providers_cs ;

__attribute__((used)) static void CRYPT_CacheSIP(const GUID *pgSubject, SIP_DISPATCH_INFO *info)
{
    WINE_SIP_PROVIDER *prov = CryptMemAlloc(sizeof(WINE_SIP_PROVIDER));

    if (prov)
    {
        prov->subject = *pgSubject;
        prov->info = *info;
        EnterCriticalSection(&providers_cs);
        list_add_tail(&providers, &prov->entry);
        LeaveCriticalSection(&providers_cs);
    }
}
