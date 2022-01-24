#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mask; char* pszText; scalar_t__ lParam; scalar_t__ iSubItem; int /*<<< orphan*/  iItem; int /*<<< orphan*/  stateMask; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int cbSize; char* pszOID; } ;
typedef  TYPE_1__* PCRYPT_OID_INFO ;
typedef  TYPE_2__ LVITEMA ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  CRYPT_OID_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CheckBitmapIndexChecked ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDC_CERTIFICATE_USAGES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int LVIF_PARAM ; 
 int LVIF_STATE ; 
 int LVIF_TEXT ; 
 int /*<<< orphan*/  LVIS_STATEIMAGEMASK ; 
 int /*<<< orphan*/  LVM_GETITEMCOUNT ; 
 int /*<<< orphan*/  LVM_INSERTITEMA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(HWND hwnd, LPCSTR oid)
{
    HWND lv = FUNC0(hwnd, IDC_CERTIFICATE_USAGES);
    PCRYPT_OID_INFO info = FUNC2(FUNC1(), HEAP_ZERO_MEMORY,
     sizeof(CRYPT_OID_INFO));

    if (info)
    {
        char *oidCopy = FUNC2(FUNC1(), 0, FUNC8(oid) + 1);

        if (oidCopy)
        {
            LVITEMA item;

            FUNC7(oidCopy, oid);
            info->cbSize = sizeof(CRYPT_OID_INFO);
            info->pszOID = oidCopy;
            item.mask = LVIF_TEXT | LVIF_STATE | LVIF_PARAM;
            item.state = FUNC4(CheckBitmapIndexChecked);
            item.stateMask = LVIS_STATEIMAGEMASK;
            item.iItem = FUNC6(lv, LVM_GETITEMCOUNT, 0, 0);
            item.iSubItem = 0;
            item.lParam = (LPARAM)info;
            item.pszText = oidCopy;
            FUNC5(lv, LVM_INSERTITEMA, 0, (LPARAM)&item);
        }
        else
            FUNC3(FUNC1(), 0, info);
    }
}