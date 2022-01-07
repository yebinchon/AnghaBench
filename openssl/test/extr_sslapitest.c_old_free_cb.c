
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int OPENSSL_free (unsigned char*) ;

__attribute__((used)) static void old_free_cb(SSL *s, unsigned int ext_type, const unsigned char *out,
                        void *add_arg)
{
    OPENSSL_free((unsigned char *)out);
}
