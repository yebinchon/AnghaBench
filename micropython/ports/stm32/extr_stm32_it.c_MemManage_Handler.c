
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __fatal_error (char*) ;

void MemManage_Handler(void) {

    while (1) {
        __fatal_error("MemManage");
    }
}
