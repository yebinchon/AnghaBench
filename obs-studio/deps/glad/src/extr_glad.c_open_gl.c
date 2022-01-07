
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PFNGLXGETPROCADDRESSPROC_PRIVATE ;
typedef int NAMES ;


 int RTLD_GLOBAL ;
 int RTLD_NOW ;
 int * dlopen (char const*,int) ;
 scalar_t__ dlsym (int *,char*) ;
 int * gladGetProcAddressPtr ;
 int * libGL ;

__attribute__((used)) static
int open_gl(void) {
    static const char *NAMES[] = {"libGL.so.1", "libGL.so"};


    unsigned int index = 0;
    for(index = 0; index < (sizeof(NAMES) / sizeof(NAMES[0])); index++) {
        libGL = dlopen(NAMES[index], RTLD_NOW | RTLD_GLOBAL);

        if(libGL != ((void*)0)) {



            gladGetProcAddressPtr = (PFNGLXGETPROCADDRESSPROC_PRIVATE)dlsym(libGL,
                "glXGetProcAddressARB");
            return gladGetProcAddressPtr != ((void*)0);

        }
    }

    return 0;
}
