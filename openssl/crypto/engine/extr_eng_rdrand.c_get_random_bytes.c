
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t OPENSSL_ia32_rdrand_bytes (unsigned char*,size_t) ;

__attribute__((used)) static int get_random_bytes(unsigned char *buf, int num)
{
    if (num < 0) {
        return 0;
    }

    return (size_t)num == OPENSSL_ia32_rdrand_bytes(buf, (size_t)num);
}
