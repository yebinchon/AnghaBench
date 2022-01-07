
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int generate_cookie_callback (int *,unsigned char*,unsigned int*) ;

__attribute__((used)) static int generate_stateless_cookie_callback(SSL *ssl, unsigned char *cookie,
                                        size_t *cookie_len)
{
    unsigned int temp;
    int res = generate_cookie_callback(ssl, cookie, &temp);
    *cookie_len = temp;
    return res;
}
