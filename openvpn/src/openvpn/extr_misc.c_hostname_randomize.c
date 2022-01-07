
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef int rnd_bytes ;


 char const* BSTR (struct buffer*) ;
 struct buffer alloc_buf_gc (scalar_t__,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,char const*,char const*) ;
 char* format_hex_ex (int *,int,int,int ,int *,struct gc_arena*) ;
 int n_rnd_bytes ;
 int prng_bytes (int *,int) ;
 scalar_t__ strlen (char const*) ;

const char *
hostname_randomize(const char *hostname, struct gc_arena *gc)
{


    uint8_t rnd_bytes[6];
    const char *rnd_str;
    struct buffer hname = alloc_buf_gc(strlen(hostname)+sizeof(rnd_bytes)*2+4, gc);

    prng_bytes(rnd_bytes, sizeof(rnd_bytes));
    rnd_str = format_hex_ex(rnd_bytes, sizeof(rnd_bytes), 40, 0, ((void*)0), gc);
    buf_printf(&hname, "%s.%s", rnd_str, hostname);
    return BSTR(&hname);

}
