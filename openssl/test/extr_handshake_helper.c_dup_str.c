
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* OPENSSL_strndup (char const*,size_t) ;
 int OPENSSL_strnlen (char const*,size_t) ;
 int TEST_ptr (char*) ;
 scalar_t__ TEST_size_t_eq (int ,size_t) ;

__attribute__((used)) static char *dup_str(const unsigned char *in, size_t len)
{
    char *ret = ((void*)0);

    if (len == 0)
        return ((void*)0);


    if (TEST_size_t_eq(OPENSSL_strnlen((const char*)(in), len), len))
        TEST_ptr(ret = OPENSSL_strndup((const char*)(in), len));
    return ret;
}
