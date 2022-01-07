
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwMagic; } ;
struct TYPE_5__ {int dwSize; int szDescription; int szName; void* dwVersionICM; void* dwVersion; scalar_t__ dwFlags; int fccHandler; int fccType; } ;
typedef int LRESULT ;
typedef TYPE_1__ ICINFO ;
typedef TYPE_2__ ICCVID_Info ;
typedef int DWORD ;


 int ARRAY_SIZE (int ) ;
 int ICCVID_MAGIC ;
 int ICCVID_hModule ;
 int ICTYPE_VIDEO ;
 void* ICVERSION ;
 int IDS_DESCRIPTION ;
 int IDS_NAME ;
 int LoadStringW (int ,int ,int ,int ) ;

__attribute__((used)) static LRESULT ICCVID_GetInfo( ICCVID_Info *info, ICINFO *icinfo, DWORD dwSize )
{
    if (!icinfo) return sizeof(ICINFO);
    if (dwSize < sizeof(ICINFO)) return 0;

    icinfo->dwSize = sizeof(ICINFO);
    icinfo->fccType = ICTYPE_VIDEO;
    icinfo->fccHandler = info ? info->dwMagic : ICCVID_MAGIC;
    icinfo->dwFlags = 0;
    icinfo->dwVersion = ICVERSION;
    icinfo->dwVersionICM = ICVERSION;

    LoadStringW(ICCVID_hModule, IDS_NAME, icinfo->szName, ARRAY_SIZE(icinfo->szName));
    LoadStringW(ICCVID_hModule, IDS_DESCRIPTION, icinfo->szDescription, ARRAY_SIZE(icinfo->szDescription));


    return sizeof(ICINFO);
}
