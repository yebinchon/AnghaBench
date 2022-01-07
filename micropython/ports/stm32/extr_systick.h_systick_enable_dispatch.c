
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int systick_dispatch_t ;


 int * systick_dispatch_table ;

__attribute__((used)) static inline void systick_enable_dispatch(size_t slot, systick_dispatch_t f) {
    systick_dispatch_table[slot] = f;
}
