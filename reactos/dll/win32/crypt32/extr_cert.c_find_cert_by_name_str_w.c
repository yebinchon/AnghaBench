
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PCCERT_CONTEXT ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__* LPCWSTR ;
typedef int HCERTSTORE ;
typedef int DWORD ;


 scalar_t__* CryptMemAlloc (int) ;
 int CryptMemFree (scalar_t__*) ;
 int TRACE (char*,int ) ;
 int * cert_compare_certs_in_store (int ,int *,int ,int,int,scalar_t__*) ;
 int compare_cert_by_name_str ;
 int debugstr_w (void const*) ;
 int * find_cert_any (int ,int,int,int *,int *) ;
 int strlenW (void const*) ;
 scalar_t__ tolowerW (scalar_t__) ;

__attribute__((used)) static PCCERT_CONTEXT find_cert_by_name_str_w(HCERTSTORE store, DWORD dwType,
 DWORD dwFlags, const void *pvPara, PCCERT_CONTEXT prev)
{
    PCCERT_CONTEXT found = ((void*)0);

    TRACE("%s\n", debugstr_w(pvPara));

    if (pvPara)
    {
        DWORD len = strlenW(pvPara);
        LPWSTR str = CryptMemAlloc((len + 1) * sizeof(WCHAR));

        if (str)
        {
            LPCWSTR src;
            LPWSTR dst;

            for (src = pvPara, dst = str; *src; src++, dst++)
                *dst = tolowerW(*src);
            *dst = 0;
           found = cert_compare_certs_in_store(store, prev,
            compare_cert_by_name_str, dwType, dwFlags, str);
           CryptMemFree(str);
        }
    }
    else
        found = find_cert_any(store, dwType, dwFlags, ((void*)0), prev);
    return found;
}
