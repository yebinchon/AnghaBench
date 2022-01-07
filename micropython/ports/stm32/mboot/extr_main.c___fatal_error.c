
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NVIC_SystemReset () ;

__attribute__((used)) static void __fatal_error(const char *msg) {
    NVIC_SystemReset();
    for (;;) {
    }
}
