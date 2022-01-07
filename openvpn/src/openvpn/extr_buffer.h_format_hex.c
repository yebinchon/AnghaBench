
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gc_arena {int dummy; } ;


 char* format_hex_ex (int const*,int,int,int,char*,struct gc_arena*) ;

__attribute__((used)) static inline char *
format_hex(const uint8_t *data, int size, int maxoutput, struct gc_arena *gc)
{
    return format_hex_ex(data, size, maxoutput, 4, " ", gc);
}
