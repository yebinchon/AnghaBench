
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tag ;
struct TYPE_2__ {unsigned char* buf; int * ctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int EVP_CIPHER_CTX ;


 scalar_t__ COND (int) ;
 int EVP_CIPHER_CTX_ctrl (int *,int ,int,unsigned char*) ;
 int EVP_CTRL_AEAD_SET_TAG ;
 int EVP_DecryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_DecryptInit_ex (int *,int *,int *,int *,int ) ;
 int EVP_DecryptUpdate (int *,unsigned char*,int*,unsigned char*,int) ;
 int EVP_EncryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_EncryptUpdate (int *,unsigned char*,int*,unsigned char*,int) ;
 scalar_t__ decrypt ;
 int iv ;
 int* lengths ;
 int save_count ;
 size_t testnum ;

__attribute__((used)) static int EVP_Update_loop_ccm(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    EVP_CIPHER_CTX *ctx = tempargs->ctx;
    int outl, count;
    unsigned char tag[12];

    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];

    if (decrypt) {
        for (count = 0; COND(nb_iter); count++) {
            EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG, sizeof(tag), tag);

            EVP_DecryptInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), iv);

            EVP_DecryptUpdate(ctx, buf, &outl, buf, lengths[testnum]);
        }
    } else {
        for (count = 0; COND(nb_iter); count++) {

            EVP_EncryptUpdate(ctx, ((void*)0), &outl, ((void*)0), lengths[testnum]);

            EVP_EncryptUpdate(ctx, buf, &outl, buf, lengths[testnum]);
        }
    }
    if (decrypt)
        EVP_DecryptFinal_ex(ctx, buf, &outl);
    else
        EVP_EncryptFinal_ex(ctx, buf, &outl);
    return count;
}
