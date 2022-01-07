
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock_hi () ;
 int data_hi () ;

__attribute__((used)) static inline void idle(void) {
    clock_hi();
    data_hi();
}
