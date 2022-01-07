
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_type {int hmac_length; int cipher_length; } ;
struct key2 {int n; TYPE_1__* keys; } ;
struct gc_arena {int dummy; } ;
struct TYPE_2__ {int hmac; int cipher; } ;


 int ASSERT (int) ;
 int D_SHOW_KEY_SOURCE ;
 int dmsg (int ,char*,char const*,int ) ;
 int format_hex (int ,int ,int ,struct gc_arena*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;

void
key2_print(const struct key2 *k,
           const struct key_type *kt,
           const char *prefix0,
           const char *prefix1)
{
    struct gc_arena gc = gc_new();
    ASSERT(k->n == 2);
    dmsg(D_SHOW_KEY_SOURCE, "%s (cipher): %s",
         prefix0,
         format_hex(k->keys[0].cipher, kt->cipher_length, 0, &gc));
    dmsg(D_SHOW_KEY_SOURCE, "%s (hmac): %s",
         prefix0,
         format_hex(k->keys[0].hmac, kt->hmac_length, 0, &gc));
    dmsg(D_SHOW_KEY_SOURCE, "%s (cipher): %s",
         prefix1,
         format_hex(k->keys[1].cipher, kt->cipher_length, 0, &gc));
    dmsg(D_SHOW_KEY_SOURCE, "%s (hmac): %s",
         prefix1,
         format_hex(k->keys[1].hmac, kt->hmac_length, 0, &gc));
    gc_free(&gc);
}
