
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; unsigned char* buf2; size_t sigsize; int ** sm2_pkey; int ** sm2_ctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;


 int BIO_printf (int ,char*) ;
 scalar_t__ COND (int ) ;
 int ERR_print_errors (int ) ;
 int EVP_DigestSign (int *,unsigned char*,size_t*,unsigned char*,int) ;
 int EVP_DigestSignInit (int *,int *,int ,int *,int *) ;
 int EVP_sm3 () ;
 int bio_err ;
 int ** sm2_c ;
 size_t testnum ;

__attribute__((used)) static int SM2_sign_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    EVP_MD_CTX **sm2ctx = tempargs->sm2_ctx;
    unsigned char *sm2sig = tempargs->buf2;
    size_t sm2sigsize = tempargs->sigsize;
    const size_t max_size = tempargs->sigsize;
    int ret, count;
    EVP_PKEY **sm2_pkey = tempargs->sm2_pkey;

    for (count = 0; COND(sm2_c[testnum][0]); count++) {
        if (!EVP_DigestSignInit(sm2ctx[testnum], ((void*)0), EVP_sm3(),
                                ((void*)0), sm2_pkey[testnum])) {
            BIO_printf(bio_err, "SM2 init sign failure\n");
            ERR_print_errors(bio_err);
            count = -1;
            break;
        }
        ret = EVP_DigestSign(sm2ctx[testnum], sm2sig, &sm2sigsize,
                             buf, 20);
        if (ret == 0) {
            BIO_printf(bio_err, "SM2 sign failure\n");
            ERR_print_errors(bio_err);
            count = -1;
            break;
        }

        tempargs->sigsize = sm2sigsize;
        sm2sigsize = max_size;
    }

    return count;
}
