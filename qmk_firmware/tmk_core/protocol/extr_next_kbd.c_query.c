
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out_hi () ;
 int out_hi_delay (int) ;
 int out_lo_delay (int) ;

__attribute__((used)) static inline void query(void) {
    out_lo_delay(5);
    out_hi_delay(1);
    out_lo_delay(3);
    out_hi();
}
