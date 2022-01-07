
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mac ;
struct TYPE_2__ {unsigned char* buf; int * cmac_ctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int key ;
typedef int CMAC_CTX ;


 int CMAC_Final (int *,unsigned char*,size_t*) ;
 int CMAC_Init (int *,char const*,int,int ,int *) ;
 int CMAC_Update (int *,unsigned char*,int) ;
 scalar_t__ COND (int) ;
 int evp_cmac_cipher ;
 int* lengths ;
 int save_count ;
 size_t testnum ;

__attribute__((used)) static int EVP_CMAC_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    CMAC_CTX *cmac_ctx = tempargs->cmac_ctx;
    static const char key[16] = "This is a key...";
    unsigned char mac[16];
    size_t len = sizeof(mac);
    int count;

    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];


    for (count = 0; COND(nb_iter); count++) {
        if (!CMAC_Init(cmac_ctx, key, sizeof(key), evp_cmac_cipher, ((void*)0))
                || !CMAC_Update(cmac_ctx, buf, lengths[testnum])
                || !CMAC_Final(cmac_ctx, mac, &len))
            return -1;
    }
    return count;
}
