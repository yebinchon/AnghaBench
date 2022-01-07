
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CIPHER ;


 unsigned int SSL3_NUM_CIPHERS ;
 int const* ssl3_ciphers ;

const SSL_CIPHER *ssl3_get_cipher(unsigned int u)
{
    if (u < SSL3_NUM_CIPHERS)
        return &(ssl3_ciphers[SSL3_NUM_CIPHERS - 1 - u]);
    else
        return ((void*)0);
}
