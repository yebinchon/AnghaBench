
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock_hi () ;
 int data_lo () ;

__attribute__((used)) static inline void request(void) {
    clock_hi();
    data_lo();
}
