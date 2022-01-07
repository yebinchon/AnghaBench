
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlclose (int *) ;
 int * libGL ;

__attribute__((used)) static
void close_gl() {
    if(libGL != ((void*)0)) {
        dlclose(libGL);
        libGL = ((void*)0);
    }
}
