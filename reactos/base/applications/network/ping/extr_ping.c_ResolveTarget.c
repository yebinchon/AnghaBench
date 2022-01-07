
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hints ;
struct TYPE_7__ {int ai_family; int ai_addrlen; int ai_addr; int ai_canonname; } ;
struct TYPE_6__ {int ai_flags; int ai_family; } ;
typedef int PCWSTR ;
typedef int BOOL ;
typedef TYPE_1__ ADDRINFOW ;


 int AI_CANONNAME ;
 int AI_NUMERICHOST ;
 int CanonName ;
 int ConResPrintf (int ,int ,int ) ;
 int DPRINT (char*,int ) ;
 int FALSE ;
 int Family ;
 int GetAddrInfoW (int ,int *,TYPE_1__*,TYPE_3__**) ;
 int GetNameInfoW (int ,int ,int ,int ,int *,int ,int ) ;
 int IDS_UNKNOWN_HOST ;
 int NI_NAMEREQD ;
 scalar_t__ ResolveAddress ;
 int StdOut ;
 int TRUE ;
 TYPE_3__* Target ;
 int WSAGetLastError () ;
 int ZeroMemory (TYPE_1__*,int) ;
 int _countof (int ) ;
 int wcslen (int ) ;
 int wcsncpy (int ,int ,int ) ;

__attribute__((used)) static
BOOL
ResolveTarget(PCWSTR target)
{
    ADDRINFOW hints;
    int Status;

    ZeroMemory(&hints, sizeof(hints));
    hints.ai_family = Family;
    hints.ai_flags = AI_NUMERICHOST;

    Status = GetAddrInfoW(target, ((void*)0), &hints, &Target);
    if (Status != 0)
    {
        hints.ai_flags = AI_CANONNAME;

        Status = GetAddrInfoW(target, ((void*)0), &hints, &Target);
        if (Status != 0)
        {
            ConResPrintf(StdOut, IDS_UNKNOWN_HOST, target);
            return FALSE;
        }

        wcsncpy(CanonName, Target->ai_canonname, wcslen(Target->ai_canonname));
    }
    else if (ResolveAddress)
    {
        Status = GetNameInfoW(Target->ai_addr, Target->ai_addrlen,
                              CanonName, _countof(CanonName),
                              ((void*)0), 0,
                              NI_NAMEREQD);
        if (Status != 0)
        {
            DPRINT("GetNameInfoW failed: %d\n", WSAGetLastError());
        }
    }

    Family = Target->ai_family;

    return TRUE;
}
