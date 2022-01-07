
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int components ;
struct TYPE_3__ {int member_0; int dwSchemeLength; int nScheme; int lpszScheme; int member_1; } ;
typedef TYPE_1__ URL_COMPONENTSW ;
typedef int * SchemeDllRetrieveEncodedObjectW ;
typedef int * LPSTR ;
typedef int LPCWSTR ;
typedef int * HCRYPTOIDFUNCSET ;
typedef scalar_t__ HCRYPTOIDFUNCADDR ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 scalar_t__ CryptGetOIDFunctionAddress (int *,int ,int *,int ,void**,scalar_t__*) ;
 int * CryptInitOIDFunctionSet (int ,int ) ;
 int * CryptMemAlloc (int) ;
 int CryptMemFree (int *) ;
 int ERROR_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int * FTP_RetrieveEncodedObjectW ;
 int * File_RetrieveEncodedObjectW ;
 int * HTTP_RetrieveEncodedObjectW ;



 scalar_t__ InternetCrackUrlW (int ,int ,int ,TYPE_1__*) ;
 int SCHEME_OID_RETRIEVE_ENCODED_OBJECTW_FUNC ;
 int SetLastError (int ) ;
 int TRACE (char*,scalar_t__,...) ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int,int *,int *) ;
 int X509_ASN_ENCODING ;
 int debugstr_w (int ) ;

__attribute__((used)) static BOOL CRYPT_GetRetrieveFunction(LPCWSTR pszURL,
 SchemeDllRetrieveEncodedObjectW *pFunc, HCRYPTOIDFUNCADDR *phFunc)
{
    URL_COMPONENTSW components = { sizeof(components), 0 };
    BOOL ret;

    TRACE("(%s, %p, %p)\n", debugstr_w(pszURL), pFunc, phFunc);

    *pFunc = ((void*)0);
    *phFunc = 0;
    components.dwSchemeLength = 1;
    ret = InternetCrackUrlW(pszURL, 0, 0, &components);
    if (ret)
    {




        switch (components.nScheme)
        {
        case 129:
            *pFunc = FTP_RetrieveEncodedObjectW;
            break;
        case 128:
            *pFunc = HTTP_RetrieveEncodedObjectW;
            break;
        case 130:
            *pFunc = File_RetrieveEncodedObjectW;
            break;
        default:
        {
            int len = WideCharToMultiByte(CP_ACP, 0, components.lpszScheme,
             components.dwSchemeLength, ((void*)0), 0, ((void*)0), ((void*)0));

            if (len)
            {
                LPSTR scheme = CryptMemAlloc(len);

                if (scheme)
                {
                    static HCRYPTOIDFUNCSET set = ((void*)0);

                    if (!set)
                        set = CryptInitOIDFunctionSet(
                         SCHEME_OID_RETRIEVE_ENCODED_OBJECTW_FUNC, 0);
                    WideCharToMultiByte(CP_ACP, 0, components.lpszScheme,
                     components.dwSchemeLength, scheme, len, ((void*)0), ((void*)0));
                    ret = CryptGetOIDFunctionAddress(set, X509_ASN_ENCODING,
                     scheme, 0, (void **)pFunc, phFunc);
                    CryptMemFree(scheme);
                }
                else
                {
                    SetLastError(ERROR_OUTOFMEMORY);
                    ret = FALSE;
                }
            }
            else
                ret = FALSE;
        }
        }
    }
    TRACE("returning %d\n", ret);
    return ret;
}
