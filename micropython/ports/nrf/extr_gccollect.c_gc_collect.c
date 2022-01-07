
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _ram_end ;
 int gc_collect_end () ;
 int gc_collect_root (void**,int) ;
 int gc_collect_start () ;
 uintptr_t get_sp () ;

void gc_collect(void) {

    gc_collect_start();


    uintptr_t sp = get_sp();


    gc_collect_root((void**)sp, ((uint32_t)&_ram_end - sp) / sizeof(uint32_t));


    gc_collect_end();
}
