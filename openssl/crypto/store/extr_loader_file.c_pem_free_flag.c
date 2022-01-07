
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (void*) ;
 int OPENSSL_secure_clear_free (void*,size_t) ;

__attribute__((used)) static void pem_free_flag(void *pem_data, int secure, size_t num)
{
    if (secure)
        OPENSSL_secure_clear_free(pem_data, num);
    else
        OPENSSL_free(pem_data);
}
