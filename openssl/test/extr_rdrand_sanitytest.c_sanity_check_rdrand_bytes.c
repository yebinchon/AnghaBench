
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_ia32_rdrand_bytes ;
 int sanity_check_bytes (int ,int,int ,int,int) ;

__attribute__((used)) static int sanity_check_rdrand_bytes(void)
{
    return sanity_check_bytes(OPENSSL_ia32_rdrand_bytes, 1000, 0, 10, 10);
}
