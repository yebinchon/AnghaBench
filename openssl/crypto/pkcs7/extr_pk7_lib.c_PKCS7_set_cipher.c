
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* enveloped; TYPE_1__* signed_and_enveloped; } ;
struct TYPE_11__ {TYPE_3__ d; int type; } ;
struct TYPE_10__ {int const* cipher; } ;
struct TYPE_8__ {TYPE_4__* enc_data; } ;
struct TYPE_7__ {TYPE_4__* enc_data; } ;
typedef TYPE_4__ PKCS7_ENC_CONTENT ;
typedef TYPE_5__ PKCS7 ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_type (int const*) ;


 int NID_undef ;
 int OBJ_obj2nid (int ) ;
 int PKCS7_F_PKCS7_SET_CIPHER ;
 int PKCS7_R_CIPHER_HAS_NO_OBJECT_IDENTIFIER ;
 int PKCS7_R_WRONG_CONTENT_TYPE ;
 int PKCS7err (int ,int ) ;

int PKCS7_set_cipher(PKCS7 *p7, const EVP_CIPHER *cipher)
{
    int i;
    PKCS7_ENC_CONTENT *ec;

    i = OBJ_obj2nid(p7->type);
    switch (i) {
    case 128:
        ec = p7->d.signed_and_enveloped->enc_data;
        break;
    case 129:
        ec = p7->d.enveloped->enc_data;
        break;
    default:
        PKCS7err(PKCS7_F_PKCS7_SET_CIPHER, PKCS7_R_WRONG_CONTENT_TYPE);
        return 0;
    }


    i = EVP_CIPHER_type(cipher);
    if (i == NID_undef) {
        PKCS7err(PKCS7_F_PKCS7_SET_CIPHER,
                 PKCS7_R_CIPHER_HAS_NO_OBJECT_IDENTIFIER);
        return 0;
    }

    ec->cipher = cipher;
    return 1;
}
