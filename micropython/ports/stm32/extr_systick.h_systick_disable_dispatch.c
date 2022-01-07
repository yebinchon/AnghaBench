
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** systick_dispatch_table ;

__attribute__((used)) static inline void systick_disable_dispatch(size_t slot) {
    systick_dispatch_table[slot] = ((void*)0);
}
