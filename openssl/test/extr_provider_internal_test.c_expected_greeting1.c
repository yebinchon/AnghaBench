
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expected_greeting ;


 int BIO_snprintf (char*,int,char*,int ,char const*) ;
 int OPENSSL_VERSION_STR ;

__attribute__((used)) static const char *expected_greeting1(const char *name)
{
    static char expected_greeting[256] = "";

    BIO_snprintf(expected_greeting, sizeof(expected_greeting),
                 "Hello OpenSSL %.20s, greetings from %s!",
                 OPENSSL_VERSION_STR, name);

    return expected_greeting;
}
