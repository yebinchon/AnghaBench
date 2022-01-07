
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t maxbytes; } ;


 int * mem_base ;
 size_t mem_limit ;
 int mem_limit_reached ;
 int memory_release () ;
 TYPE_1__ settings ;

__attribute__((used)) static bool do_slabs_adjust_mem_limit(size_t new_mem_limit) {

    if (mem_base != ((void*)0))
        return 0;
    settings.maxbytes = new_mem_limit;
    mem_limit = new_mem_limit;
    mem_limit_reached = 0;
    memory_release();
    return 1;
}
