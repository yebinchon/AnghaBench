
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int cipher_length; } ;
struct key {scalar_t__* cipher; } ;


 int D_CRYPT_ERRORS ;
 int msg (int ,char*) ;

__attribute__((used)) static bool
key_is_zero(struct key *key, const struct key_type *kt)
{
    int i;
    for (i = 0; i < kt->cipher_length; ++i)
    {
        if (key->cipher[i])
        {
            return 0;
        }
    }
    msg(D_CRYPT_ERRORS, "CRYPTO INFO: WARNING: zero key detected");
    return 1;
}
