
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pkey; } ;
struct TYPE_3__ {int length; int data; } ;
typedef TYPE_2__ PKCS8_PRIV_KEY_INFO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OP_FREE_PRE ;
 int OPENSSL_cleanse (int ,int ) ;

__attribute__((used)) static int pkey_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                   void *exarg)
{

    if (operation == ASN1_OP_FREE_PRE) {
        PKCS8_PRIV_KEY_INFO *key = (PKCS8_PRIV_KEY_INFO *)*pval;
        if (key->pkey)
            OPENSSL_cleanse(key->pkey->data, key->pkey->length);
    }
    return 1;
}
