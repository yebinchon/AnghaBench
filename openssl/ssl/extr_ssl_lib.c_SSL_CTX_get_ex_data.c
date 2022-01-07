
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_data; } ;
typedef TYPE_1__ SSL_CTX ;


 void* CRYPTO_get_ex_data (int *,int) ;

void *SSL_CTX_get_ex_data(const SSL_CTX *s, int idx)
{
    return CRYPTO_get_ex_data(&s->ex_data, idx);
}
