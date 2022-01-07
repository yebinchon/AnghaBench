
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_printf (char*,int,int ,char const*,int,char const*) ;
 int system_get_free_heap_size () ;

__attribute__((used)) static void
mbedtls_dbg(void *p, int level, const char *file, int line, const char *str)
{
 os_printf("TLS<%d> (heap=%d): %s:%d %s", level, system_get_free_heap_size(), file, line, str);
}
