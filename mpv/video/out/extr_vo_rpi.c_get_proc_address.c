
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLubyte ;


 int RTLD_LAZY ;
 int dlclose (void*) ;
 void* dlopen (char*,int ) ;
 void* dlsym (void*,int const*) ;
 void* eglGetProcAddress (int const*) ;

__attribute__((used)) static void *get_proc_address(const GLubyte *name)
{
    void *p = eglGetProcAddress(name);


    if (!p) {
        void *h = dlopen("/opt/vc/lib/libGLESv2.so", RTLD_LAZY);
        if (h) {
            p = dlsym(h, name);
            dlclose(h);
        }
    }
    return p;
}
