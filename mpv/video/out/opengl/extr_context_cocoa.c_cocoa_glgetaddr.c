
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_LAZY ;
 int RTLD_LOCAL ;
 int dlclose (void*) ;
 void* dlopen (char*,int) ;
 void* dlsym (void*,char const*) ;

__attribute__((used)) static void *cocoa_glgetaddr(const char *s)
{
    void *ret = ((void*)0);
    void *handle = dlopen(
        "/System/Library/Frameworks/OpenGL.framework/OpenGL",
        RTLD_LAZY | RTLD_LOCAL);
    if (!handle)
        return ((void*)0);
    ret = dlsym(handle, s);
    dlclose(handle);
    return ret;
}
