
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 scalar_t__ munmap (void*,size_t) ;
 int perror (char*) ;

__attribute__((used)) static void FUZ_freeLowAddr(void* buffer, size_t size)
{
    if (munmap(buffer, size)) {
        perror("fuzzer: freeing low address buffer");
        abort();
    }
}
