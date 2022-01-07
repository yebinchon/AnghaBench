
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PCCERT_CONTEXT ;
typedef scalar_t__* LPWSTR ;
typedef int HCERTSTORE ;
typedef int DWORD ;


 int CP_ACP ;
 scalar_t__* CryptMemAlloc (int) ;
 int CryptMemFree (scalar_t__*) ;
 int MultiByteToWideChar (int ,int ,void const*,int,scalar_t__*,int) ;
 int TRACE (char*,int ) ;
 int * cert_compare_certs_in_store (int ,int *,int ,int ,int ,scalar_t__*) ;
 int compare_cert_by_name_str ;
 int debugstr_a (void const*) ;
 int * find_cert_any (int ,int ,int ,int *,int *) ;
 scalar_t__ tolowerW (scalar_t__) ;

__attribute__((used)) static PCCERT_CONTEXT find_cert_by_name_str_a(HCERTSTORE store, DWORD dwType,
 DWORD dwFlags, const void *pvPara, PCCERT_CONTEXT prev)
{
    PCCERT_CONTEXT found = ((void*)0);

    TRACE("%s\n", debugstr_a(pvPara));

    if (pvPara)
    {
        int len = MultiByteToWideChar(CP_ACP, 0, pvPara, -1, ((void*)0), 0);
        LPWSTR str = CryptMemAlloc(len * sizeof(WCHAR));

        if (str)
        {
            LPWSTR ptr;

            MultiByteToWideChar(CP_ACP, 0, pvPara, -1, str, len);
            for (ptr = str; *ptr; ptr++)
                *ptr = tolowerW(*ptr);
            found = cert_compare_certs_in_store(store, prev,
             compare_cert_by_name_str, dwType, dwFlags, str);
            CryptMemFree(str);
        }
    }
    else
        found = find_cert_any(store, dwType, dwFlags, ((void*)0), prev);
    return found;
}
