
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * nonce_data ;
 int * nonce_md ;
 scalar_t__ nonce_secret_len ;

void
prng_uninit(void)
{
    free(nonce_data);
    nonce_data = ((void*)0);
    nonce_md = ((void*)0);
    nonce_secret_len = 0;
}
