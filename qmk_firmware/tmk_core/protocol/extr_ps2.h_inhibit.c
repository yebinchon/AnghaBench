
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock_lo () ;
 int data_hi () ;

__attribute__((used)) static inline void inhibit(void) {
    clock_lo();
    data_hi();
}
