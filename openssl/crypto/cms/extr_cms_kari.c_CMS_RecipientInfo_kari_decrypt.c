
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_3__* envelopedData; } ;
struct TYPE_20__ {TYPE_4__ d; } ;
struct TYPE_19__ {unsigned char* key; size_t keylen; } ;
struct TYPE_18__ {TYPE_1__* encryptedKey; } ;
struct TYPE_14__ {int kari; } ;
struct TYPE_17__ {TYPE_2__ d; } ;
struct TYPE_15__ {TYPE_7__* encryptedContentInfo; } ;
struct TYPE_13__ {size_t length; unsigned char* data; } ;
typedef TYPE_5__ CMS_RecipientInfo ;
typedef TYPE_6__ CMS_RecipientEncryptedKey ;
typedef TYPE_7__ CMS_EncryptedContentInfo ;
typedef TYPE_8__ CMS_ContentInfo ;


 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int OPENSSL_free (unsigned char*) ;
 int cms_env_asn1_ctrl (TYPE_5__*,int) ;
 int cms_kek_cipher (unsigned char**,size_t*,unsigned char*,size_t,int ,int ) ;

int CMS_RecipientInfo_kari_decrypt(CMS_ContentInfo *cms,
                                   CMS_RecipientInfo *ri,
                                   CMS_RecipientEncryptedKey *rek)
{
    int rv = 0;
    unsigned char *enckey = ((void*)0), *cek = ((void*)0);
    size_t enckeylen;
    size_t ceklen;
    CMS_EncryptedContentInfo *ec;
    enckeylen = rek->encryptedKey->length;
    enckey = rek->encryptedKey->data;

    if (!cms_env_asn1_ctrl(ri, 1))
        goto err;

    if (!cms_kek_cipher(&cek, &ceklen, enckey, enckeylen, ri->d.kari, 0))
        goto err;
    ec = cms->d.envelopedData->encryptedContentInfo;
    OPENSSL_clear_free(ec->key, ec->keylen);
    ec->key = cek;
    ec->keylen = ceklen;
    cek = ((void*)0);
    rv = 1;
 err:
    OPENSSL_free(cek);
    return rv;
}
