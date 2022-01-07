
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* owner_passwd; scalar_t__ mode; int key_len; int* user_passwd; int* owner_key; } ;
typedef int HPDF_UINT ;
typedef int HPDF_MD5_CTX ;
typedef TYPE_1__* HPDF_Encrypt ;
typedef int HPDF_BYTE ;
typedef int HPDF_ARC4_Ctx_Rec ;


 int ARC4CryptBuf (int *,int*,int*,int) ;
 int ARC4Init (int *,int*,int) ;
 scalar_t__ HPDF_ENCRYPT_R3 ;
 int HPDF_MD5Final (int*,int *) ;
 int HPDF_MD5Init (int *) ;
 int HPDF_MD5Update (int *,int*,int) ;
 int HPDF_MD5_KEY_LEN ;
 int HPDF_MemCpy (int*,int*,int) ;
 int HPDF_PASSWD_LEN ;
 int HPDF_PTRACE (char*) ;

void
HPDF_Encrypt_CreateOwnerKey (HPDF_Encrypt attr)
{
    HPDF_ARC4_Ctx_Rec rc4_ctx;
    HPDF_MD5_CTX md5_ctx;
    HPDF_BYTE digest[HPDF_MD5_KEY_LEN];
    HPDF_BYTE tmppwd[HPDF_PASSWD_LEN];

    HPDF_PTRACE((" HPDF_Encrypt_CreateOwnerKey\n"));




    HPDF_MD5Init(&md5_ctx);
    HPDF_MD5Update(&md5_ctx, attr->owner_passwd, HPDF_PASSWD_LEN);

    HPDF_PTRACE(("@ Algorithm 3.3 step 2\n"));

    HPDF_MD5Final(digest, &md5_ctx);


    if (attr->mode == HPDF_ENCRYPT_R3) {
        HPDF_UINT i;

        for (i = 0; i < 50; i++) {
            HPDF_MD5Init(&md5_ctx);


            HPDF_MD5Update (&md5_ctx, digest, attr->key_len);
            HPDF_MD5Final(digest, &md5_ctx);

            HPDF_PTRACE(("@ Algorithm 3.3 step 3 loop %u\n", i));
        }
    }


    HPDF_PTRACE(("@ Algorithm 3.3 step 7 loop 0\n"));

    ARC4Init (&rc4_ctx, digest, attr->key_len);

    HPDF_PTRACE(("@ Algorithm 3.3 step 5\n"));


    HPDF_PTRACE(("@ Algorithm 3.3 step 6\n"));
    ARC4CryptBuf (&rc4_ctx, attr->user_passwd, tmppwd, HPDF_PASSWD_LEN);


    HPDF_PTRACE(("@ Algorithm 3.3 step 7\n"));
    if (attr->mode == HPDF_ENCRYPT_R3) {
        HPDF_BYTE tmppwd2[HPDF_PASSWD_LEN];
        HPDF_UINT i;

        for (i = 1; i <= 19; i++) {
            HPDF_UINT j;
            HPDF_BYTE new_key[HPDF_MD5_KEY_LEN];

            for (j = 0; j < attr->key_len; j++)
                new_key[j] = (HPDF_BYTE)(digest[j] ^ i);

            HPDF_PTRACE(("@ Algorithm 3.3 step 7 loop %u\n", i));

            HPDF_MemCpy (tmppwd2, tmppwd, HPDF_PASSWD_LEN);
            ARC4Init(&rc4_ctx, new_key, attr->key_len);
            ARC4CryptBuf(&rc4_ctx, tmppwd2, tmppwd, HPDF_PASSWD_LEN);
        }
    }


    HPDF_PTRACE(("@ Algorithm 3.3 step 8\n"));
    HPDF_MemCpy (attr->owner_key, tmppwd, HPDF_PASSWD_LEN);
}
