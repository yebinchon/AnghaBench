
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 scalar_t__ COND (int ) ;
 int DES_ENCRYPT ;
 int DES_iv ;
 int DES_ncbc_encrypt (unsigned char*,unsigned char*,int ,int *,int *,int ) ;
 size_t D_CBC_DES ;
 int ** c ;
 int * lengths ;
 int sch ;
 size_t testnum ;

__attribute__((used)) static int DES_ncbc_encrypt_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    int count;
    for (count = 0; COND(c[D_CBC_DES][testnum]); count++)
        DES_ncbc_encrypt(buf, buf, lengths[testnum], &sch,
                         &DES_iv, DES_ENCRYPT);
    return count;
}
