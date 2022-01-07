
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 scalar_t__ COND (int ) ;
 size_t D_WHIRLPOOL ;
 int WHIRLPOOL (unsigned char*,int ,unsigned char*) ;
 int WHIRLPOOL_DIGEST_LENGTH ;
 int ** c ;
 int * lengths ;
 size_t testnum ;

__attribute__((used)) static int WHIRLPOOL_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char whirlpool[WHIRLPOOL_DIGEST_LENGTH];
    int count;
    for (count = 0; COND(c[D_WHIRLPOOL][testnum]); count++)
        WHIRLPOOL(buf, lengths[testnum], whirlpool);
    return count;
}
