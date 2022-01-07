
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int cipher_length; scalar_t__ cipher; } ;
struct key {int cipher; } ;
struct gc_arena {int dummy; } ;


 int D_CRYPTO_DEBUG ;
 scalar_t__ check_debug_level (int ) ;
 int dmsg (int ,char*,int ,int ) ;
 int format_hex (int ,int ,int ,struct gc_arena*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int key_des_fixup (int ,int ,int const) ;
 int key_des_num_cblocks (scalar_t__) ;
 scalar_t__ memcmp (int ,int ,int ) ;

void
fixup_key(struct key *key, const struct key_type *kt)
{
    struct gc_arena gc = gc_new();
    if (kt->cipher)
    {



        const int ndc = key_des_num_cblocks(kt->cipher);

        if (ndc)
        {
            key_des_fixup(key->cipher, kt->cipher_length, ndc);
        }
    }
    gc_free(&gc);
}
