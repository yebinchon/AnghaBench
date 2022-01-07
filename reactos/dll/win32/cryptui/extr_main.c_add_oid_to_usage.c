
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cUsageIdentifier; int * rgpszUsageIdentifier; } ;
typedef int LPSTR ;
typedef TYPE_1__ CERT_ENHKEY_USAGE ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int * HeapReAlloc (int ,int ,int *,int) ;

__attribute__((used)) static CERT_ENHKEY_USAGE *add_oid_to_usage(CERT_ENHKEY_USAGE *usage, LPSTR oid)
{
    if (!usage->cUsageIdentifier)
        usage->rgpszUsageIdentifier = HeapAlloc(GetProcessHeap(), 0,
         sizeof(LPSTR));
    else
        usage->rgpszUsageIdentifier = HeapReAlloc(GetProcessHeap(), 0,
         usage->rgpszUsageIdentifier,
         (usage->cUsageIdentifier + 1) * sizeof(LPSTR));
    if (usage->rgpszUsageIdentifier)
        usage->rgpszUsageIdentifier[usage->cUsageIdentifier++] = oid;
    else
    {
        HeapFree(GetProcessHeap(), 0, usage);
        usage = ((void*)0);
    }
    return usage;
}
