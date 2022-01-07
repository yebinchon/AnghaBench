
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getenv (char*) ;
 int ngx_debug_malloc ;
 int setenv (char*,char*,int ) ;

void
ngx_debug_init(void)
{
    if (getenv("MallocScribble")) {
        ngx_debug_malloc = 1;
    }


}
