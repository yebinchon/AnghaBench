
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _malloc_options ;
 char* getenv (char*) ;
 char* malloc_options ;
 int ngx_debug_malloc ;
 scalar_t__ ngx_strchr (char*,char) ;

void
ngx_debug_init(void)
{
    char *mo;

    mo = getenv("MALLOC_OPTIONS");

    if (mo && ngx_strchr(mo, 'J')) {
        ngx_debug_malloc = 1;
    }

}
