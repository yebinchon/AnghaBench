
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gc_arena {int dummy; } ;


 int * make_base64_string2 (int const*,int ,struct gc_arena*) ;
 int strlen (char const*) ;

uint8_t *
make_base64_string(const uint8_t *str, struct gc_arena *gc)
{
    return make_base64_string2(str, strlen((const char *)str), gc);
}
