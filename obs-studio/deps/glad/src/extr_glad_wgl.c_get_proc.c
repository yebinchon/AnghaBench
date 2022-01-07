
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetProcAddress (int *,char const*) ;
 void* dlsym (int *,char const*) ;
 void* gladGetProcAddressPtr (char const*) ;
 int * libGL ;

__attribute__((used)) static
void* get_proc(const char *namez) {
    void* result = ((void*)0);
    if(libGL == ((void*)0)) return ((void*)0);


    if(gladGetProcAddressPtr != ((void*)0)) {
        result = gladGetProcAddressPtr(namez);
    }

    if(result == ((void*)0)) {



        result = dlsym(libGL, namez);

    }

    return result;
}
