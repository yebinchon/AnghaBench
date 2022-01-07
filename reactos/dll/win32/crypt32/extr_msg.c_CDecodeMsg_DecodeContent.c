
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int cbData; int pbData; } ;
struct TYPE_13__ {int type; TYPE_1__ msg_data; } ;
struct TYPE_12__ {int Content; int pszObjId; } ;
typedef int DWORD ;
typedef int CRYPT_DER_BLOB ;
typedef TYPE_2__ CRYPT_CONTENT_INFO ;
typedef TYPE_3__ CDecodeMsg ;
typedef int BOOL ;


 int CDecodeMsg_DecodeDataContent (TYPE_3__*,int const*) ;
 int CDecodeMsg_DecodeEnvelopedContent (TYPE_3__*,int const*) ;
 int CDecodeMsg_DecodeHashedContent (TYPE_3__*,int const*) ;
 int CDecodeMsg_DecodeSignedContent (TYPE_3__*,int const*) ;




 int CRYPT_DECODE_ALLOC_FLAG ;
 int CRYPT_E_INVALID_MSG_TYPE ;
 int CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,TYPE_2__**,int*) ;
 int FALSE ;
 int LocalFree (TYPE_2__*) ;
 int PKCS_CONTENT_INFO ;
 int SetLastError (int ) ;
 int X509_ASN_ENCODING ;
 int strcmp (int ,int ) ;
 int szOID_RSA_data ;
 int szOID_RSA_digestedData ;
 int szOID_RSA_envelopedData ;
 int szOID_RSA_signedData ;

__attribute__((used)) static BOOL CDecodeMsg_DecodeContent(CDecodeMsg *msg, const CRYPT_DER_BLOB *blob,
 DWORD type)
{
    BOOL ret;

    switch (type)
    {
    case 131:
        if ((ret = CDecodeMsg_DecodeDataContent(msg, blob)))
            msg->type = 131;
        break;
    case 129:
        if ((ret = CDecodeMsg_DecodeHashedContent(msg, blob)))
            msg->type = 129;
        break;
    case 130:
        if ((ret = CDecodeMsg_DecodeEnvelopedContent(msg, blob)))
            msg->type = 130;
        break;
    case 128:
        if ((ret = CDecodeMsg_DecodeSignedContent(msg, blob)))
            msg->type = 128;
        break;
    default:
    {
        CRYPT_CONTENT_INFO *info;
        DWORD size;

        ret = CryptDecodeObjectEx(X509_ASN_ENCODING, PKCS_CONTENT_INFO,
         msg->msg_data.pbData, msg->msg_data.cbData, CRYPT_DECODE_ALLOC_FLAG,
         ((void*)0), &info, &size);
        if (ret)
        {
            if (!strcmp(info->pszObjId, szOID_RSA_data))
                ret = CDecodeMsg_DecodeContent(msg, &info->Content, 131);
            else if (!strcmp(info->pszObjId, szOID_RSA_digestedData))
                ret = CDecodeMsg_DecodeContent(msg, &info->Content,
                 129);
            else if (!strcmp(info->pszObjId, szOID_RSA_envelopedData))
                ret = CDecodeMsg_DecodeContent(msg, &info->Content,
                 130);
            else if (!strcmp(info->pszObjId, szOID_RSA_signedData))
                ret = CDecodeMsg_DecodeContent(msg, &info->Content,
                 128);
            else
            {
                SetLastError(CRYPT_E_INVALID_MSG_TYPE);
                ret = FALSE;
            }
            LocalFree(info);
        }
    }
    }
    return ret;
}
