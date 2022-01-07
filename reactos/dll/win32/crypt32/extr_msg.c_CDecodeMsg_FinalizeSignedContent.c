
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_19__ {TYPE_3__* info; } ;
struct TYPE_16__ {TYPE_9__ signed_data; } ;
struct TYPE_13__ {int open_flags; } ;
struct TYPE_17__ {scalar_t__ cbData; int pbData; } ;
struct TYPE_18__ {TYPE_4__ u; TYPE_1__ base; TYPE_5__ detached_data; int crypt_prov; } ;
struct TYPE_14__ {int pszObjId; TYPE_5__ Content; } ;
struct TYPE_15__ {scalar_t__ cSignerInfo; TYPE_2__ content; } ;
typedef scalar_t__ DWORD ;
typedef int CRYPT_DER_BLOB ;
typedef TYPE_5__ CRYPT_DATA_BLOB ;
typedef TYPE_6__ CDecodeMsg ;
typedef scalar_t__ BOOL ;


 int CMSG_DETACHED_FLAG ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 scalar_t__ CSignedMsgData_AllocateHandles (TYPE_9__*) ;
 scalar_t__ CSignedMsgData_ConstructSignerHandles (TYPE_9__*,scalar_t__,int *,int*) ;
 scalar_t__ CSignedMsgData_Update (TYPE_9__*,int ,scalar_t__,int ,int ) ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,scalar_t__,int ,int *,TYPE_5__**,scalar_t__*) ;
 int LocalFree (TYPE_5__*) ;
 int TRUE ;
 int Verify ;
 int X509_ASN_ENCODING ;
 int X509_OCTET_STRING ;
 int strcmp (int ,int ) ;
 int szOID_RSA_data ;

__attribute__((used)) static BOOL CDecodeMsg_FinalizeSignedContent(CDecodeMsg *msg,
 CRYPT_DER_BLOB *blob)
{
    BOOL ret;
    DWORD i, size;

    ret = CSignedMsgData_AllocateHandles(&msg->u.signed_data);
    for (i = 0; ret && i < msg->u.signed_data.info->cSignerInfo; i++)
        ret = CSignedMsgData_ConstructSignerHandles(&msg->u.signed_data, i,
         &msg->crypt_prov, &msg->base.open_flags);
    if (ret)
    {
        CRYPT_DATA_BLOB *content;






        if (msg->base.open_flags & CMSG_DETACHED_FLAG)
            content = &msg->detached_data;
        else
            content = &msg->u.signed_data.info->content.Content;
        if (content->cbData)
        {



            if (!(msg->base.open_flags & CMSG_DETACHED_FLAG) &&
             !strcmp(msg->u.signed_data.info->content.pszObjId,
             szOID_RSA_data))
            {
                CRYPT_DATA_BLOB *rsa_blob;

                ret = CryptDecodeObjectEx(X509_ASN_ENCODING,
                 X509_OCTET_STRING, content->pbData, content->cbData,
                 CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &rsa_blob, &size);
                if (ret)
                {
                    ret = CSignedMsgData_Update(&msg->u.signed_data,
                     rsa_blob->pbData, rsa_blob->cbData, TRUE, Verify);
                    LocalFree(rsa_blob);
                }
            }
            else
                ret = CSignedMsgData_Update(&msg->u.signed_data,
                 content->pbData, content->cbData, TRUE, Verify);
        }
    }
    return ret;
}
