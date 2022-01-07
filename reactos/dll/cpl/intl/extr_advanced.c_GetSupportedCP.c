
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int CodePageName; } ;
struct TYPE_7__ {int Flags; struct TYPE_7__* NextItem; int * Name; scalar_t__ CodePage; } ;
typedef int PINT ;
typedef TYPE_1__* PCPAGE ;
typedef int INFCONTEXT ;
typedef int HINF ;
typedef TYPE_2__ CPINFOEX ;
typedef int CPAGE ;
typedef int BOOL ;


 int CODEPAGE_NOT_REMOVEABLE ;
 int FALSE ;
 scalar_t__ GetACP () ;
 scalar_t__ GetCPInfoExW (scalar_t__,int ,TYPE_2__*) ;
 scalar_t__ GetOEMCP () ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int MAX_PATH ;
 TYPE_1__* PCPage ;
 int SetupFindFirstLine (int ,char*,int *,int *) ;
 int SetupFindFirstLineW (int ,int *,char*,int *) ;
 int SetupFindNextLine (int *,int *) ;
 scalar_t__ SetupGetIntField (int *,int ,int ) ;
 int SetupGetStringFieldW (int *,int,int *,int,int *) ;
 int TRUE ;
 int UNICODE_NULL ;
 int wcscpy (int *,int ) ;
 scalar_t__ wcslen (int *) ;
 int wsprintf (int *,char*,scalar_t__) ;

__attribute__((used)) static BOOL
GetSupportedCP(
    HINF hInf)
{
    WCHAR szSection[MAX_PATH];
    INFCONTEXT Context, Context2;
    PCPAGE pCodePage;
    CPINFOEX cpInfEx;
    UINT uiCodePage;

    if (!SetupFindFirstLine(hInf,
                            L"CodePages",
                            ((void*)0),
                            &Context))
        return FALSE;

    for (;;)
    {
        if (SetupGetIntField(&Context, 0, (PINT)&uiCodePage))
        {
            pCodePage = HeapAlloc(GetProcessHeap(), 0, sizeof(CPAGE));
            if (pCodePage == ((void*)0))
                return FALSE;

            pCodePage->CodePage = uiCodePage;
            pCodePage->Flags = 0;
            (pCodePage->Name)[0] = UNICODE_NULL;

            if (GetCPInfoExW(uiCodePage, 0, &cpInfEx))
            {
                wcscpy(pCodePage->Name, cpInfEx.CodePageName);
            }
            else
            {
                SetupGetStringFieldW(&Context, 1, pCodePage->Name, MAX_PATH, ((void*)0));
            }

            if (wcslen(pCodePage->Name) != 0)
            {
                pCodePage->NextItem = PCPage;
                PCPage = pCodePage;

                wsprintf(szSection, L"CODEPAGE_REMOVE_%d", uiCodePage);

                if ((uiCodePage == GetACP()) ||
                    (uiCodePage == GetOEMCP()) ||
                    (!SetupFindFirstLineW(hInf, szSection, L"AddReg", &Context2)))
                {
                    pCodePage->Flags |= CODEPAGE_NOT_REMOVEABLE;
                }
            }
            else
            {
                HeapFree(GetProcessHeap(), 0, pCodePage);
            }
        }

        if (!SetupFindNextLine(&Context, &Context))
            break;
    }

    return TRUE;
}
