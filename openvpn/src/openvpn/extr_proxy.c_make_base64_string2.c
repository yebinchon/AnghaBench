
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gc_arena {int dummy; } ;


 int ASSERT (int) ;
 int free (char*) ;
 scalar_t__ openvpn_base64_encode (void const*,int,char**) ;
 scalar_t__ string_alloc (char*,struct gc_arena*) ;

uint8_t *
make_base64_string2(const uint8_t *str, int src_len, struct gc_arena *gc)
{
    uint8_t *ret = ((void*)0);
    char *b64out = ((void*)0);
    ASSERT(openvpn_base64_encode((const void *)str, src_len, &b64out) >= 0);
    ret = (uint8_t *) string_alloc(b64out, gc);
    free(b64out);
    return ret;
}
