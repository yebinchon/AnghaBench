
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ psz; int flags; } ;
struct TYPE_3__ {scalar_t__ lParam; int flags; } ;
typedef scalar_t__ PCCRYPT_OID_INFO ;
typedef TYPE_1__ LVFINDINFOW ;
typedef TYPE_2__ LVFINDINFOA ;
typedef scalar_t__ LPCSTR ;
typedef scalar_t__ LPARAM ;
typedef int LONG_PTR ;
typedef int HWND ;


 int CRYPT_ENHKEY_USAGE_OID_GROUP_ID ;
 int CRYPT_OID_INFO_OID_KEY ;
 scalar_t__ CryptFindOIDInfo (int ,void*,int ) ;
 int LVFI_PARAM ;
 int LVFI_STRING ;
 int LVM_FINDITEMA ;
 int LVM_FINDITEMW ;
 int SendMessageW (int ,int ,int,scalar_t__) ;

__attribute__((used)) static LONG_PTR find_oid_in_list(HWND lv, LPCSTR oid)
{
    PCCRYPT_OID_INFO oidInfo = CryptFindOIDInfo(CRYPT_OID_INFO_OID_KEY,
     (void *)oid, CRYPT_ENHKEY_USAGE_OID_GROUP_ID);
    LONG_PTR ret;

    if (oidInfo)
    {
        LVFINDINFOW findInfo;

        findInfo.flags = LVFI_PARAM;
        findInfo.lParam = (LPARAM)oidInfo;
        ret = SendMessageW(lv, LVM_FINDITEMW, -1, (LPARAM)&findInfo);
    }
    else
    {
        LVFINDINFOA findInfo;

        findInfo.flags = LVFI_STRING;
        findInfo.psz = oid;
        ret = SendMessageW(lv, LVM_FINDITEMA, -1, (LPARAM)&findInfo);
    }
    return ret;
}
