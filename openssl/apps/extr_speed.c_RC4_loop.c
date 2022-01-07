
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 scalar_t__ COND (int ) ;
 size_t D_RC4 ;
 int RC4 (int *,size_t,unsigned char*,unsigned char*) ;
 int ** c ;
 scalar_t__* lengths ;
 int rc4_ks ;
 size_t testnum ;

__attribute__((used)) static int RC4_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    int count;
    for (count = 0; COND(c[D_RC4][testnum]); count++)
        RC4(&rc4_ks, (size_t)lengths[testnum], buf, buf);
    return count;
}
