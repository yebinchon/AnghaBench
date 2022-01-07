
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_7__ {int dwValType; } ;
struct TYPE_5__ {char* pszText; int iSubItem; scalar_t__ lParam; scalar_t__ cchTextMax; } ;
struct TYPE_6__ {TYPE_1__ item; } ;
typedef TYPE_2__ NMLVDISPINFO ;
typedef TYPE_3__ LINE_INFO ;


 int COUNT_OF (char*) ;
 int IDS_DEFAULT_VALUE_NAME ;
 int IDS_UNKNOWN_TYPE ;
 int LoadStringW (int ,int ,char*,int ) ;
 int hInst ;
 int wsprintf (char*,char*,int ) ;

__attribute__((used)) static void OnGetDispInfo(NMLVDISPINFO* plvdi)
{
    static WCHAR buffer[200];

    plvdi->item.pszText = ((void*)0);
    plvdi->item.cchTextMax = 0;

    switch (plvdi->item.iSubItem)
    {
    case 0:
        LoadStringW(hInst, IDS_DEFAULT_VALUE_NAME, buffer, COUNT_OF(buffer));
        plvdi->item.pszText = buffer;
        break;
    case 1:
        switch (((LINE_INFO*)plvdi->item.lParam)->dwValType)
        {
            case 132:
                plvdi->item.pszText = L"REG_NONE";
                break;
            case 128:
                plvdi->item.pszText = L"REG_SZ";
                break;
            case 136:
                plvdi->item.pszText = L"REG_EXPAND_SZ";
                break;
            case 139:
                plvdi->item.pszText = L"REG_BINARY";
                break;
            case 138:
                plvdi->item.pszText = L"REG_DWORD";
                break;
            case 137:
                plvdi->item.pszText = L"REG_DWORD_BIG_ENDIAN";
                break;
            case 134:
                plvdi->item.pszText = L"REG_LINK";
                break;
            case 133:
                plvdi->item.pszText = L"REG_MULTI_SZ";
                break;
            case 130:
                plvdi->item.pszText = L"REG_RESOURCE_LIST";
                break;
            case 135:
                plvdi->item.pszText = L"REG_FULL_RESOURCE_DESCRIPTOR";
                break;
            case 129:
                plvdi->item.pszText = L"REG_RESOURCE_REQUIREMENTS_LIST";
                break;
            case 131:
                plvdi->item.pszText = L"REG_QWORD";
                break;
            default:
            {
                WCHAR buf2[200];
                LoadStringW(hInst, IDS_UNKNOWN_TYPE, buf2, COUNT_OF(buf2));
                wsprintf(buffer, buf2, ((LINE_INFO*)plvdi->item.lParam)->dwValType);
                plvdi->item.pszText = buffer;
                break;
            }
        }
        break;
    case 3:
        plvdi->item.pszText = L"";
        break;
    }
}
