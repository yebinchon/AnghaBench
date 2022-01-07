
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int type ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_2__ {int cbData; int pbData; } ;
typedef int HCRYPTPROV ;
typedef int HCRYPTMSG ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef scalar_t__ BOOL ;


 int CERT_STORE_NO_CRYPT_RELEASE_FLAG ;
 int CMSG_CRYPT_RELEASE_CONTEXT_FLAG ;
 int CMSG_SIGNED ;
 int CMSG_TYPE_PARAM ;
 int CRYPT_E_INVALID_MSG_TYPE ;
 int * CRYPT_MsgOpenStore (int ,int,int ) ;
 int CryptMsgClose (int ) ;
 scalar_t__ CryptMsgGetParam (int ,int ,int ,int*,int*) ;
 int CryptMsgOpenToDecode (int ,int,int,int ,int *,int *) ;
 scalar_t__ CryptMsgUpdate (int ,int ,int ,int ) ;
 scalar_t__ FALSE ;
 int PKCS_7_ASN_ENCODING ;
 int SetLastError (int ) ;
 int TRACE (char*,int *,...) ;
 int TRUE ;

__attribute__((used)) static WINECRYPT_CERTSTORE *CRYPT_PKCSOpenStore(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    HCRYPTMSG msg;
    WINECRYPT_CERTSTORE *store = ((void*)0);
    const CRYPT_DATA_BLOB *data = pvPara;
    BOOL ret;
    DWORD msgOpenFlags = dwFlags & CERT_STORE_NO_CRYPT_RELEASE_FLAG ? 0 :
     CMSG_CRYPT_RELEASE_CONTEXT_FLAG;

    TRACE("(%ld, %08x, %p)\n", hCryptProv, dwFlags, pvPara);

    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, msgOpenFlags, CMSG_SIGNED,
     hCryptProv, ((void*)0), ((void*)0));
    ret = CryptMsgUpdate(msg, data->pbData, data->cbData, TRUE);
    if (!ret)
    {
        CryptMsgClose(msg);
        msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, msgOpenFlags, 0,
         hCryptProv, ((void*)0), ((void*)0));
        ret = CryptMsgUpdate(msg, data->pbData, data->cbData, TRUE);
        if (ret)
        {
            DWORD type, size = sizeof(type);


            ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, &type, &size);
            if (ret && type != CMSG_SIGNED)
            {
                SetLastError(CRYPT_E_INVALID_MSG_TYPE);
                ret = FALSE;
            }
        }
    }
    if (ret)
        store = CRYPT_MsgOpenStore(0, dwFlags, msg);
    CryptMsgClose(msg);
    TRACE("returning %p\n", store);
    return store;
}
