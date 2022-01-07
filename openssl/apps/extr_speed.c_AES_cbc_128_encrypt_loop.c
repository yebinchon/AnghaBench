
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 int AES_ENCRYPT ;
 int AES_cbc_encrypt (unsigned char*,unsigned char*,size_t,int *,int ,int ) ;
 scalar_t__ COND (int ) ;
 size_t D_CBC_128_AES ;
 int aes_ks1 ;
 int ** c ;
 int iv ;
 scalar_t__* lengths ;
 size_t testnum ;

__attribute__((used)) static int AES_cbc_128_encrypt_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    int count;
    for (count = 0; COND(c[D_CBC_128_AES][testnum]); count++)
        AES_cbc_encrypt(buf, buf,
                        (size_t)lengths[testnum], &aes_ks1, iv, AES_ENCRYPT);
    return count;
}
