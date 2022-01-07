
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int properties; } ;
struct TYPE_9__ {int cbData; int pbData; } ;
struct TYPE_8__ {int cbData; int pbData; } ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_DER_BLOB ;
typedef TYPE_2__ CRYPT_DATA_BLOB ;
typedef TYPE_3__ CDecodeMsg ;
typedef scalar_t__ BOOL ;


 int CMSG_CONTENT_PARAM ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 scalar_t__ ContextPropertyList_SetProperty (int ,int ,int ,int ) ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,TYPE_2__**,int *) ;
 int LocalFree (TYPE_2__*) ;
 int X509_ASN_ENCODING ;
 int X509_OCTET_STRING ;

__attribute__((used)) static BOOL CDecodeMsg_DecodeDataContent(CDecodeMsg *msg, const CRYPT_DER_BLOB *blob)
{
    BOOL ret;
    CRYPT_DATA_BLOB *data;
    DWORD size;

    ret = CryptDecodeObjectEx(X509_ASN_ENCODING, X509_OCTET_STRING,
     blob->pbData, blob->cbData, CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &data, &size);
    if (ret)
    {
        ret = ContextPropertyList_SetProperty(msg->properties,
         CMSG_CONTENT_PARAM, data->pbData, data->cbData);
        LocalFree(data);
    }
    return ret;
}
