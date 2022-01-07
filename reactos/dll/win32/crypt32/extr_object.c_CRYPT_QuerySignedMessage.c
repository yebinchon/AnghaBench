
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int type ;
struct TYPE_3__ {int cbData; int pbData; } ;
typedef int * HCRYPTMSG ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef scalar_t__ BOOL ;


 scalar_t__ CERT_QUERY_CONTENT_PKCS7_SIGNED ;
 scalar_t__ CMSG_SIGNED ;
 int CMSG_TYPE_PARAM ;
 int CryptMsgClose (int *) ;
 scalar_t__ CryptMsgGetParam (int *,int ,int ,scalar_t__*,scalar_t__*) ;
 int * CryptMsgOpenToDecode (scalar_t__,int ,scalar_t__,int ,int *,int *) ;
 scalar_t__ CryptMsgUpdate (int *,int ,int ,int ) ;
 int ERROR_INVALID_DATA ;
 scalar_t__ FALSE ;
 scalar_t__ PKCS_7_ASN_ENCODING ;
 int SetLastError (int ) ;
 int TRUE ;
 scalar_t__ X509_ASN_ENCODING ;

__attribute__((used)) static BOOL CRYPT_QuerySignedMessage(const CRYPT_DATA_BLOB *blob,
 DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType, HCRYPTMSG *phMsg)
{
    DWORD encodingType = X509_ASN_ENCODING | PKCS_7_ASN_ENCODING;
    BOOL ret = FALSE;
    HCRYPTMSG msg;

    if ((msg = CryptMsgOpenToDecode(encodingType, 0, 0, 0, ((void*)0), ((void*)0))))
    {
        ret = CryptMsgUpdate(msg, blob->pbData, blob->cbData, TRUE);
        if (ret)
        {
            DWORD type, len = sizeof(type);

            ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, &type, &len);
            if (ret)
            {
                if (type != CMSG_SIGNED)
                {
                    SetLastError(ERROR_INVALID_DATA);
                    ret = FALSE;
                }
            }
        }
        if (!ret)
        {
            CryptMsgClose(msg);
            msg = CryptMsgOpenToDecode(encodingType, 0, CMSG_SIGNED, 0, ((void*)0),
             ((void*)0));
            if (msg)
            {
                ret = CryptMsgUpdate(msg, blob->pbData, blob->cbData, TRUE);
                if (!ret)
                {
                    CryptMsgClose(msg);
                    msg = ((void*)0);
                }
            }
        }
    }
    if (ret)
    {
        if (pdwMsgAndCertEncodingType)
            *pdwMsgAndCertEncodingType = encodingType;
        if (pdwContentType)
            *pdwContentType = CERT_QUERY_CONTENT_PKCS7_SIGNED;
        if (phMsg)
            *phMsg = msg;
    }
    return ret;
}
