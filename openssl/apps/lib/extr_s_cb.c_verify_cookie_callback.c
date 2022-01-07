
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int EVP_MAX_MD_SIZE ;
 scalar_t__ cookie_initialized ;
 scalar_t__ generate_cookie_callback (int *,unsigned char*,unsigned int*) ;
 scalar_t__ memcmp (unsigned char*,unsigned char const*,unsigned int) ;

int verify_cookie_callback(SSL *ssl, const unsigned char *cookie,
                           unsigned int cookie_len)
{
    unsigned char result[EVP_MAX_MD_SIZE];
    unsigned int resultlength;



    if (cookie_initialized
        && generate_cookie_callback(ssl, result, &resultlength)
        && cookie_len == resultlength
        && memcmp(result, cookie, resultlength) == 0)
        return 1;

    return 0;
}
