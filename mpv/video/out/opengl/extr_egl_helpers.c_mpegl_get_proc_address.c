
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_DEFAULT ;
 void* dlsym (int ,char const*) ;
 void* eglGetProcAddress (char const*) ;

__attribute__((used)) static void *mpegl_get_proc_address(void *ctx, const char *name)
{
    void *p = eglGetProcAddress(name);
    return p;
}
