
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int pbData; int cbData; } ;
struct TYPE_14__ {size_t cbData; int * pbData; } ;
struct TYPE_13__ {int cCertEncoded; int cCrlEncoded; TYPE_5__* rgCrlEncoded; TYPE_5__* rgCertEncoded; int member_0; } ;
struct TYPE_12__ {int pbCertEncoded; int cbCertEncoded; } ;
struct TYPE_11__ {int pbCrlEncoded; int cbCrlEncoded; } ;
typedef TYPE_1__* PCCRL_CONTEXT ;
typedef TYPE_2__* PCCERT_CONTEXT ;
typedef int HCERTSTORE ;
typedef size_t DWORD ;
typedef TYPE_3__ CRYPT_SIGNED_INFO ;
typedef TYPE_4__ CERT_BLOB ;
typedef int BOOL ;


 int CRYPT_AsnEncodeCMSSignedInfo (TYPE_3__*,int *,size_t*) ;
 TYPE_1__* CertEnumCRLsInStore (int ,TYPE_1__*) ;
 TYPE_2__* CertEnumCertificatesInStore (int ,TYPE_2__*) ;
 void* CryptMemAlloc (int) ;
 int CryptMemFree (TYPE_5__*) ;
 int ERROR_MORE_DATA ;
 int ERROR_OUTOFMEMORY ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,int,...) ;
 int TRUE ;

__attribute__((used)) static BOOL CRYPT_SavePKCSToMem(HCERTSTORE store,
 DWORD dwMsgAndCertEncodingType, void *handle)
{
    CERT_BLOB *blob = handle;
    CRYPT_SIGNED_INFO signedInfo = { 0 };
    PCCERT_CONTEXT cert = ((void*)0);
    PCCRL_CONTEXT crl = ((void*)0);
    DWORD size;
    BOOL ret = TRUE;

    TRACE("(%d, %p)\n", blob->pbData ? blob->cbData : 0, blob->pbData);

    do {
        cert = CertEnumCertificatesInStore(store, cert);
        if (cert)
            signedInfo.cCertEncoded++;
    } while (cert);
    if (signedInfo.cCertEncoded)
    {
        signedInfo.rgCertEncoded = CryptMemAlloc(
         signedInfo.cCertEncoded * sizeof(CERT_BLOB));
        if (!signedInfo.rgCertEncoded)
        {
            SetLastError(ERROR_OUTOFMEMORY);
            ret = FALSE;
        }
        else
        {
            DWORD i = 0;

            do {
                cert = CertEnumCertificatesInStore(store, cert);
                if (cert)
                {
                    signedInfo.rgCertEncoded[i].cbData = cert->cbCertEncoded;
                    signedInfo.rgCertEncoded[i].pbData = cert->pbCertEncoded;
                    i++;
                }
            } while (cert);
        }
    }

    do {
        crl = CertEnumCRLsInStore(store, crl);
        if (crl)
            signedInfo.cCrlEncoded++;
    } while (crl);
    if (signedInfo.cCrlEncoded)
    {
        signedInfo.rgCrlEncoded = CryptMemAlloc(
         signedInfo.cCrlEncoded * sizeof(CERT_BLOB));
        if (!signedInfo.rgCrlEncoded)
        {
            SetLastError(ERROR_OUTOFMEMORY);
            ret = FALSE;
        }
        else
        {
            DWORD i = 0;

            do {
                crl = CertEnumCRLsInStore(store, crl);
                if (crl)
                {
                    signedInfo.rgCrlEncoded[i].cbData = crl->cbCrlEncoded;
                    signedInfo.rgCrlEncoded[i].pbData = crl->pbCrlEncoded;
                    i++;
                }
            } while (crl);
        }
    }
    if (ret)
    {
        ret = CRYPT_AsnEncodeCMSSignedInfo(&signedInfo, ((void*)0), &size);
        if (ret)
        {
            if (!blob->pbData)
                blob->cbData = size;
            else if (blob->cbData < size)
            {
                blob->cbData = size;
                SetLastError(ERROR_MORE_DATA);
                ret = FALSE;
            }
            else
            {
                blob->cbData = size;
                ret = CRYPT_AsnEncodeCMSSignedInfo(&signedInfo, blob->pbData,
                 &blob->cbData);
            }
        }
    }
    CryptMemFree(signedInfo.rgCertEncoded);
    CryptMemFree(signedInfo.rgCrlEncoded);
    TRACE("returning %d\n", ret);
    return ret;
}
