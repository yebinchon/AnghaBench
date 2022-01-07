
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 scalar_t__ COND (int ) ;
 size_t D_SHA512 ;
 int SHA512 (unsigned char*,int ,unsigned char*) ;
 int SHA512_DIGEST_LENGTH ;
 int ** c ;
 int * lengths ;
 size_t testnum ;

__attribute__((used)) static int SHA512_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char sha512[SHA512_DIGEST_LENGTH];
    int count;
    for (count = 0; COND(c[D_SHA512][testnum]); count++)
        SHA512(buf, lengths[testnum], sha512);
    return count;
}
