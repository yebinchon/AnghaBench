
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct detail_data {int dummy; } ;
typedef int WCHAR ;
struct TYPE_8__ {scalar_t__ pwszName; } ;
struct TYPE_7__ {int * pszObjId; } ;
typedef TYPE_1__* PCERT_EXTENSION ;
typedef TYPE_2__* PCCRYPT_OID_INFO ;
typedef int * LPWSTR ;
typedef int HWND ;
typedef int DWORD ;


 int CRYPT_OID_INFO_OID_KEY ;
 TYPE_2__* CryptFindOIDInfo (int ,int *,int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int add_field_and_value_to_list (int ,struct detail_data*,int *,int *,int ,TYPE_1__*) ;
 int * crypt_format_extension (TYPE_1__*,int ) ;
 int field_format_detailed_extension ;
 int strlen (int *) ;

__attribute__((used)) static void add_cert_extension_detail(HWND hwnd, struct detail_data *data,
 PCERT_EXTENSION ext)
{
    PCCRYPT_OID_INFO oidInfo = CryptFindOIDInfo(CRYPT_OID_INFO_OID_KEY,
     ext->pszObjId, 0);
    LPWSTR val = crypt_format_extension(ext, 0);

    if (oidInfo)
        add_field_and_value_to_list(hwnd, data, (LPWSTR)oidInfo->pwszName,
         val, field_format_detailed_extension, ext);
    else
    {
        DWORD len = strlen(ext->pszObjId);
        LPWSTR oidW = HeapAlloc(GetProcessHeap(), 0, (len + 1) * sizeof(WCHAR));

        if (oidW)
        {
            DWORD i;

            for (i = 0; i <= len; i++)
                oidW[i] = ext->pszObjId[i];
            add_field_and_value_to_list(hwnd, data, oidW, val,
             field_format_detailed_extension, ext);
            HeapFree(GetProcessHeap(), 0, oidW);
        }
    }
    HeapFree(GetProcessHeap(), 0, val);
}
