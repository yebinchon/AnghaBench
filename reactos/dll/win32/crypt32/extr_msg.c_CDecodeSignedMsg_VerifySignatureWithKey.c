
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {TYPE_4__* info; TYPE_2__* signerHandles; } ;
struct TYPE_17__ {TYPE_5__ signed_data; } ;
struct TYPE_19__ {TYPE_6__ u; scalar_t__ crypt_prov; } ;
struct TYPE_18__ {int pbData; int cbData; } ;
struct TYPE_15__ {TYPE_3__* rgSignerInfo; } ;
struct TYPE_12__ {scalar_t__ cAttr; } ;
struct TYPE_14__ {int EncryptedHash; TYPE_1__ AuthAttrs; } ;
struct TYPE_13__ {int contentHash; int authAttrHash; } ;
typedef int PCERT_PUBLIC_KEY_INFO ;
typedef scalar_t__ HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int HCRYPTHASH ;
typedef size_t DWORD ;
typedef TYPE_7__ CRYPT_HASH_BLOB ;
typedef TYPE_8__ CDecodeMsg ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_ConstructBlob (TYPE_7__*,int *) ;
 int CRYPT_ReverseBytes (TYPE_7__*) ;
 int CryptDestroyKey (int ) ;
 scalar_t__ CryptImportPublicKeyInfo (scalar_t__,int ,int ,int *) ;
 int CryptMemFree (int ) ;
 scalar_t__ CryptVerifySignatureW (int ,int ,int ,int ,int *,int ) ;
 int X509_ASN_ENCODING ;

__attribute__((used)) static BOOL CDecodeSignedMsg_VerifySignatureWithKey(CDecodeMsg *msg,
 HCRYPTPROV prov, DWORD signerIndex, PCERT_PUBLIC_KEY_INFO keyInfo)
{
    HCRYPTKEY key;
    BOOL ret;

    if (!prov)
        prov = msg->crypt_prov;
    ret = CryptImportPublicKeyInfo(prov, X509_ASN_ENCODING, keyInfo, &key);
    if (ret)
    {
        HCRYPTHASH hash;
        CRYPT_HASH_BLOB reversedHash;

        if (msg->u.signed_data.info->rgSignerInfo[signerIndex].AuthAttrs.cAttr)
            hash = msg->u.signed_data.signerHandles[signerIndex].authAttrHash;
        else
            hash = msg->u.signed_data.signerHandles[signerIndex].contentHash;
        ret = CRYPT_ConstructBlob(&reversedHash,
         &msg->u.signed_data.info->rgSignerInfo[signerIndex].EncryptedHash);
        if (ret)
        {
            CRYPT_ReverseBytes(&reversedHash);
            ret = CryptVerifySignatureW(hash, reversedHash.pbData,
             reversedHash.cbData, key, ((void*)0), 0);
            CryptMemFree(reversedHash.pbData);
        }
        CryptDestroyKey(key);
    }
    return ret;
}
