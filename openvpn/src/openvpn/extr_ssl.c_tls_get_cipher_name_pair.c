
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * iana_name; int * openssl_name; } ;
typedef TYPE_1__ tls_cipher_name_pair ;


 scalar_t__ memcmp (char const*,int *,size_t) ;
 size_t strlen (int *) ;
 TYPE_1__* tls_cipher_name_translation_table ;

const tls_cipher_name_pair *
tls_get_cipher_name_pair(const char *cipher_name, size_t len)
{
    const tls_cipher_name_pair *pair = tls_cipher_name_translation_table;

    while (pair->openssl_name != ((void*)0))
    {
        if ((strlen(pair->openssl_name) == len && 0 == memcmp(cipher_name, pair->openssl_name, len))
            || (strlen(pair->iana_name) == len && 0 == memcmp(cipher_name, pair->iana_name, len)))
        {
            return pair;
        }
        pair++;
    }


    return ((void*)0);
}
