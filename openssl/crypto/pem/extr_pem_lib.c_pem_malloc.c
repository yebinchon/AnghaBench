
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* OPENSSL_malloc (int) ;
 void* OPENSSL_secure_malloc (int) ;
 unsigned int PEM_FLAG_SECURE ;

__attribute__((used)) static void *pem_malloc(int num, unsigned int flags)
{
    return (flags & PEM_FLAG_SECURE) ? OPENSSL_secure_malloc(num)
                                     : OPENSSL_malloc(num);
}
