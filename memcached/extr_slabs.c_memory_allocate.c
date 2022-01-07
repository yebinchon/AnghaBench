
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CHUNK_ALIGN_BYTES ;
 void* malloc (size_t) ;
 size_t mem_avail ;
 int * mem_base ;
 char* mem_current ;
 size_t mem_malloced ;

__attribute__((used)) static void *memory_allocate(size_t size) {
    void *ret;

    if (mem_base == ((void*)0)) {

        ret = malloc(size);
    } else {
        ret = mem_current;

        if (size > mem_avail) {
            return ((void*)0);
        }


        if (size % CHUNK_ALIGN_BYTES) {
            size += CHUNK_ALIGN_BYTES - (size % CHUNK_ALIGN_BYTES);
        }

        mem_current = ((char*)mem_current) + size;
        if (size < mem_avail) {
            mem_avail -= size;
        } else {
            mem_avail = 0;
        }
    }
    mem_malloced += size;

    return ret;
}
