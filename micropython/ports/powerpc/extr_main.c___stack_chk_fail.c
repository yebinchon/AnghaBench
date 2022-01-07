
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int printf (char*) ;

void __stack_chk_fail(void) {
    static bool failed_once;

    if (failed_once) {
        return;
    }
    failed_once = 1;
    printf("Stack corruption detected !\n");
    assert(0);
}
