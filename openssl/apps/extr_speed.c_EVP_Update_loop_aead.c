
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; int * ctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int faketag ;
typedef int aad ;
typedef int EVP_CIPHER_CTX ;


 scalar_t__ COND (int) ;
 int EVP_CIPHER_CTX_ctrl (int *,int ,int,unsigned char*) ;
 int EVP_CTRL_AEAD_SET_TAG ;
 int EVP_DecryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_DecryptInit_ex (int *,int *,int *,int *,int ) ;
 int EVP_DecryptUpdate (int *,unsigned char*,int*,unsigned char*,int) ;
 int EVP_EncryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_EncryptInit_ex (int *,int *,int *,int *,int ) ;
 int EVP_EncryptUpdate (int *,unsigned char*,int*,unsigned char*,int) ;
 scalar_t__ decrypt ;
 int iv ;
 int* lengths ;
 int save_count ;
 size_t testnum ;

__attribute__((used)) static int EVP_Update_loop_aead(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    EVP_CIPHER_CTX *ctx = tempargs->ctx;
    int outl, count;
    unsigned char aad[13] = { 0xcc };
    unsigned char faketag[16] = { 0xcc };

    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];

    if (decrypt) {
        for (count = 0; COND(nb_iter); count++) {
            EVP_DecryptInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), iv);
            EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG,
                                sizeof(faketag), faketag);
            EVP_DecryptUpdate(ctx, ((void*)0), &outl, aad, sizeof(aad));
            EVP_DecryptUpdate(ctx, buf, &outl, buf, lengths[testnum]);
            EVP_DecryptFinal_ex(ctx, buf + outl, &outl);
        }
    } else {
        for (count = 0; COND(nb_iter); count++) {
            EVP_EncryptInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), iv);
            EVP_EncryptUpdate(ctx, ((void*)0), &outl, aad, sizeof(aad));
            EVP_EncryptUpdate(ctx, buf, &outl, buf, lengths[testnum]);
            EVP_EncryptFinal_ex(ctx, buf + outl, &outl);
        }
    }
    return count;
}
