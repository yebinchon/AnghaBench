
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mask; char* pszText; scalar_t__ lParam; scalar_t__ iSubItem; int iItem; int stateMask; int state; } ;
struct TYPE_4__ {int cbSize; char* pszOID; } ;
typedef TYPE_1__* PCRYPT_OID_INFO ;
typedef TYPE_2__ LVITEMA ;
typedef int LPCSTR ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef int CRYPT_OID_INFO ;


 int CheckBitmapIndexChecked ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IDC_CERTIFICATE_USAGES ;
 int INDEXTOSTATEIMAGEMASK (int ) ;
 int LVIF_PARAM ;
 int LVIF_STATE ;
 int LVIF_TEXT ;
 int LVIS_STATEIMAGEMASK ;
 int LVM_GETITEMCOUNT ;
 int LVM_INSERTITEMA ;
 int SendMessageA (int ,int ,int ,scalar_t__) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void add_purpose(HWND hwnd, LPCSTR oid)
{
    HWND lv = GetDlgItem(hwnd, IDC_CERTIFICATE_USAGES);
    PCRYPT_OID_INFO info = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
     sizeof(CRYPT_OID_INFO));

    if (info)
    {
        char *oidCopy = HeapAlloc(GetProcessHeap(), 0, strlen(oid) + 1);

        if (oidCopy)
        {
            LVITEMA item;

            strcpy(oidCopy, oid);
            info->cbSize = sizeof(CRYPT_OID_INFO);
            info->pszOID = oidCopy;
            item.mask = LVIF_TEXT | LVIF_STATE | LVIF_PARAM;
            item.state = INDEXTOSTATEIMAGEMASK(CheckBitmapIndexChecked);
            item.stateMask = LVIS_STATEIMAGEMASK;
            item.iItem = SendMessageW(lv, LVM_GETITEMCOUNT, 0, 0);
            item.iSubItem = 0;
            item.lParam = (LPARAM)info;
            item.pszText = oidCopy;
            SendMessageA(lv, LVM_INSERTITEMA, 0, (LPARAM)&item);
        }
        else
            HeapFree(GetProcessHeap(), 0, info);
    }
}
