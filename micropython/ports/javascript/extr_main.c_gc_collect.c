
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;
typedef int jmp_buf ;


 int gc_collect_end () ;
 int gc_collect_root (void*,int) ;
 int gc_collect_start () ;
 int longjmp (int ,int) ;
 scalar_t__ setjmp (int ) ;
 scalar_t__ stack_top ;

void gc_collect(void) {


    jmp_buf dummy;
    if (setjmp(dummy) == 0) {
        longjmp(dummy, 1);
    }
    gc_collect_start();
    gc_collect_root((void*)stack_top, ((mp_uint_t)(void*)(&dummy + 1) - (mp_uint_t)stack_top) / sizeof(mp_uint_t));
    gc_collect_end();
}
