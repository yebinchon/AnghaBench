
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int cipher_length; int hmac_length; scalar_t__ digest; scalar_t__ cipher; } ;
struct key {int hmac; int cipher; } ;
struct gc_arena {int dummy; } ;


 int CLEAR (struct key) ;
 int D_SHOW_KEY_SOURCE ;
 int MAX_CIPHER_KEY_LENGTH ;
 int MAX_HMAC_KEY_LENGTH ;
 int M_FATAL ;
 int check_key (struct key*,struct key_type const*) ;
 int dmsg (int ,char*,int ) ;
 int fixup_key (struct key*,struct key_type const*) ;
 int format_hex (int ,int,int ,struct gc_arena*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*) ;
 int rand_bytes (int ,int) ;

void
generate_key_random(struct key *key, const struct key_type *kt)
{
    int cipher_len = MAX_CIPHER_KEY_LENGTH;
    int hmac_len = MAX_HMAC_KEY_LENGTH;

    struct gc_arena gc = gc_new();

    do
    {
        CLEAR(*key);
        if (kt)
        {
            if (kt->cipher && kt->cipher_length > 0 && kt->cipher_length <= cipher_len)
            {
                cipher_len = kt->cipher_length;
            }

            if (kt->digest && kt->hmac_length > 0 && kt->hmac_length <= hmac_len)
            {
                hmac_len = kt->hmac_length;
            }
        }
        if (!rand_bytes(key->cipher, cipher_len)
            || !rand_bytes(key->hmac, hmac_len))
        {
            msg(M_FATAL, "ERROR: Random number generator cannot obtain entropy for key generation");
        }

        dmsg(D_SHOW_KEY_SOURCE, "Cipher source entropy: %s", format_hex(key->cipher, cipher_len, 0, &gc));
        dmsg(D_SHOW_KEY_SOURCE, "HMAC source entropy: %s", format_hex(key->hmac, hmac_len, 0, &gc));

        if (kt)
        {
            fixup_key(key, kt);
        }
    } while (kt && !check_key(key, kt));

    gc_free(&gc);
}
