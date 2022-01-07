
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int no_key ;
struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 scalar_t__ COND (int) ;
 int * HMAC (int ,unsigned char*,int,unsigned char*,int,int *,int *) ;
 int evp_hmac_md ;
 int* lengths ;
 int save_count ;
 size_t testnum ;

__attribute__((used)) static int EVP_HMAC_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char no_key[32];
    int count;

    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];


    for (count = 0; COND(nb_iter); count++) {
        if (HMAC(evp_hmac_md, no_key, sizeof(no_key), buf, lengths[testnum],
                 ((void*)0), ((void*)0)) == ((void*)0))
            return -1;
    }
    return count;
}
