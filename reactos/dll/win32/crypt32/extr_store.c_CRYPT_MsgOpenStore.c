
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int provInfo ;
typedef int count ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_3__ {int cbSize; int hStoreProv; int rgpvStoreProvFunc; int cStoreProvFunc; int member_0; } ;
typedef scalar_t__* LPBYTE ;
typedef scalar_t__ HCRYPTPROV ;
typedef int HCRYPTMSG ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CERT_STORE_PROV_INFO ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int ) ;
 int CERT_STORE_ADD_ALWAYS ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 scalar_t__ CERT_STORE_NO_CRYPT_RELEASE_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CMSG_CERT_COUNT_PARAM ;
 int CMSG_CERT_PARAM ;
 int CMSG_CRL_COUNT_PARAM ;
 int CMSG_CRL_PARAM ;
 int * CRYPT_ProvCreateStore (scalar_t__,int *,TYPE_1__*) ;
 scalar_t__ CertAddEncodedCRLToStore (int *,int ,scalar_t__*,scalar_t__,int ,int *) ;
 scalar_t__ CertAddEncodedCertificateToStore (int *,int ,scalar_t__*,scalar_t__,int ,int *) ;
 int CertCloseStore (int *,int ) ;
 int * CertOpenStore (int ,int ,int ,int ,int *) ;
 scalar_t__* CryptMemAlloc (scalar_t__) ;
 int CryptMemFree (scalar_t__*) ;
 int CryptMsgDuplicate (int ) ;
 scalar_t__ CryptMsgGetParam (int ,int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 int CryptReleaseContext (scalar_t__,int ) ;
 int TRACE (char*,int *,...) ;
 int X509_ASN_ENCODING ;
 int msgProvFuncs ;

__attribute__((used)) static WINECRYPT_CERTSTORE *CRYPT_MsgOpenStore(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    WINECRYPT_CERTSTORE *store = ((void*)0);
    HCRYPTMSG msg = (HCRYPTMSG)pvPara;
    WINECRYPT_CERTSTORE *memStore;

    TRACE("(%ld, %08x, %p)\n", hCryptProv, dwFlags, pvPara);

    memStore = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
    if (memStore)
    {
        BOOL ret;
        DWORD size, count, i;

        size = sizeof(count);
        ret = CryptMsgGetParam(msg, CMSG_CERT_COUNT_PARAM, 0, &count, &size);
        for (i = 0; ret && i < count; i++)
        {
            size = 0;
            ret = CryptMsgGetParam(msg, CMSG_CERT_PARAM, i, ((void*)0), &size);
            if (ret)
            {
                LPBYTE buf = CryptMemAlloc(size);

                if (buf)
                {
                    ret = CryptMsgGetParam(msg, CMSG_CERT_PARAM, i, buf, &size);
                    if (ret)
                        ret = CertAddEncodedCertificateToStore(memStore,
                         X509_ASN_ENCODING, buf, size, CERT_STORE_ADD_ALWAYS,
                         ((void*)0));
                    CryptMemFree(buf);
                }
            }
        }
        size = sizeof(count);
        ret = CryptMsgGetParam(msg, CMSG_CRL_COUNT_PARAM, 0, &count, &size);
        for (i = 0; ret && i < count; i++)
        {
            size = 0;
            ret = CryptMsgGetParam(msg, CMSG_CRL_PARAM, i, ((void*)0), &size);
            if (ret)
            {
                LPBYTE buf = CryptMemAlloc(size);

                if (buf)
                {
                    ret = CryptMsgGetParam(msg, CMSG_CRL_PARAM, i, buf, &size);
                    if (ret)
                        ret = CertAddEncodedCRLToStore(memStore,
                         X509_ASN_ENCODING, buf, size, CERT_STORE_ADD_ALWAYS,
                         ((void*)0));
                    CryptMemFree(buf);
                }
            }
        }
        if (ret)
        {
            CERT_STORE_PROV_INFO provInfo = { 0 };

            provInfo.cbSize = sizeof(provInfo);
            provInfo.cStoreProvFunc = ARRAY_SIZE(msgProvFuncs);
            provInfo.rgpvStoreProvFunc = msgProvFuncs;
            provInfo.hStoreProv = CryptMsgDuplicate(msg);
            store = CRYPT_ProvCreateStore(dwFlags, memStore, &provInfo);

            if (hCryptProv && !(dwFlags & CERT_STORE_NO_CRYPT_RELEASE_FLAG))
                CryptReleaseContext(hCryptProv, 0);
        }
        else
            CertCloseStore(memStore, 0);
    }
    TRACE("returning %p\n", store);
    return store;
}
