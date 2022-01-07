
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pbData; int cbData; } ;
struct TYPE_7__ {int Algid; } ;
struct TYPE_10__ {int cbSize; int pwszCNGExtraAlgid; int pwszCNGAlgid; TYPE_2__ ExtraInfo; TYPE_1__ u; int dwGroupId; scalar_t__* pwszName; int pszOID; } ;
struct OIDInfo {int entry; TYPE_4__ info; } ;
typedef int WCHAR ;
typedef int UINT_PTR ;
struct TYPE_11__ {int pwszCNGExtraAlgid; int pwszCNGAlgid; TYPE_3__* blob; int Algid; int dwGroupId; int pszOID; scalar_t__* pwszName; } ;
struct TYPE_9__ {int pbData; int cbData; } ;
typedef scalar_t__* LPWSTR ;
typedef int LPCWSTR ;
typedef size_t DWORD ;
typedef int CRYPT_OID_INFO ;


 size_t ARRAY_SIZE (TYPE_5__*) ;
 struct OIDInfo* CryptMemAlloc (int) ;
 int IS_INTRESOURCE (scalar_t__*) ;
 int LoadStringW (int ,int ,scalar_t__*,int ) ;
 int hInstance ;
 int list_add_tail (int *,int *) ;
 int memcpy (struct OIDInfo*,int ,int) ;
 int memset (struct OIDInfo*,int ,int) ;
 int oidInfo ;
 TYPE_5__* oidInfoConstructors ;
 int oid_init_localizednames () ;

__attribute__((used)) static void init_oid_info(void)
{
    DWORD i;

    oid_init_localizednames();
    for (i = 0; i < ARRAY_SIZE(oidInfoConstructors); i++)
    {
        if (!IS_INTRESOURCE(oidInfoConstructors[i].pwszName))
        {
            struct OIDInfo *info;


            info = CryptMemAlloc(sizeof(struct OIDInfo));
            if (info)
            {
                memset(info, 0, sizeof(*info));
                info->info.cbSize = sizeof(CRYPT_OID_INFO);
                info->info.pszOID = oidInfoConstructors[i].pszOID;
                info->info.pwszName = oidInfoConstructors[i].pwszName;
                info->info.dwGroupId = oidInfoConstructors[i].dwGroupId;
                info->info.u.Algid = oidInfoConstructors[i].Algid;
                if (oidInfoConstructors[i].blob)
                {
                    info->info.ExtraInfo.cbData =
                     oidInfoConstructors[i].blob->cbData;
                    info->info.ExtraInfo.pbData =
                     oidInfoConstructors[i].blob->pbData;
                }
                info->info.pwszCNGAlgid = oidInfoConstructors[i].pwszCNGAlgid;
                info->info.pwszCNGExtraAlgid = oidInfoConstructors[i].pwszCNGExtraAlgid;
                list_add_tail(&oidInfo, &info->entry);
            }
        }
        else
        {
            LPCWSTR stringresource;
            int len = LoadStringW(hInstance,
             (UINT_PTR)oidInfoConstructors[i].pwszName,
             (LPWSTR)&stringresource, 0);

            if (len)
            {
                struct OIDInfo *info = CryptMemAlloc(sizeof(struct OIDInfo) +
                 (len + 1) * sizeof(WCHAR));

                if (info)
                {
                    memset(info, 0, sizeof(*info));
                    info->info.cbSize = sizeof(CRYPT_OID_INFO);
                    info->info.pszOID = oidInfoConstructors[i].pszOID;
                    info->info.pwszName = (LPWSTR)(info + 1);
                    info->info.dwGroupId = oidInfoConstructors[i].dwGroupId;
                    info->info.u.Algid = oidInfoConstructors[i].Algid;
                    memcpy(info + 1, stringresource, len*sizeof(WCHAR));
                    ((LPWSTR)(info + 1))[len] = 0;
                    if (oidInfoConstructors[i].blob)
                    {
                        info->info.ExtraInfo.cbData =
                         oidInfoConstructors[i].blob->cbData;
                        info->info.ExtraInfo.pbData =
                         oidInfoConstructors[i].blob->pbData;
                    }
                    info->info.pwszCNGAlgid = oidInfoConstructors[i].pwszCNGAlgid;
                    info->info.pwszCNGExtraAlgid = oidInfoConstructors[i].pwszCNGExtraAlgid;
                    list_add_tail(&oidInfo, &info->entry);
                }
            }
        }
    }
}
