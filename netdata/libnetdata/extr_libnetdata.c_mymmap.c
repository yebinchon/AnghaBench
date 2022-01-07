
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int enable_ksm ;
 scalar_t__ errno ;
 void* memory_file_mmap (char const*,size_t,int) ;
 void* memory_file_mmap_ksm (char const*,size_t,int) ;

void *mymmap(const char *filename, size_t size, int flags, int ksm) {
    void *mem = ((void*)0);

    if (filename && (flags & MAP_SHARED || !enable_ksm || !ksm))



        mem = memory_file_mmap(filename, size, flags);

    else



        mem = memory_file_mmap_ksm(filename, size, flags);

    if(mem == MAP_FAILED) return ((void*)0);

    errno = 0;
    return mem;
}
