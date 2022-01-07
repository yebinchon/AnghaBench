
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;


 char* gc_malloc (size_t,int,struct gc_arena*) ;
 int memcpy (char*,char const*,size_t) ;
 char* strchr (char const*,char) ;
 char* string_alloc (char const*,struct gc_arena*) ;

__attribute__((used)) static char *
get_ipv6_addr_no_netbits(const char *addr, struct gc_arena *gc)
{
    const char *end = strchr(addr, '/');
    char *ret = ((void*)0);
    if (((void*)0) == end)
    {
        ret = string_alloc(addr, gc);
    }
    else
    {
        size_t len = end - addr;
        ret = gc_malloc(len + 1, 1, gc);
        memcpy(ret, addr, len);
    }
    return ret;
}
