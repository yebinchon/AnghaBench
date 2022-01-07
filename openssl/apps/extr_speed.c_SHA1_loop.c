
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 scalar_t__ COND (int ) ;
 size_t D_SHA1 ;
 int SHA1 (unsigned char*,int ,unsigned char*) ;
 int SHA_DIGEST_LENGTH ;
 int ** c ;
 int * lengths ;
 size_t testnum ;

__attribute__((used)) static int SHA1_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char sha[SHA_DIGEST_LENGTH];
    int count;
    for (count = 0; COND(c[D_SHA1][testnum]); count++)
        SHA1(buf, lengths[testnum], sha);
    return count;
}
