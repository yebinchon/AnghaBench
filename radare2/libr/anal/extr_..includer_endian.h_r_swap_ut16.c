
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;



__attribute__((used)) static inline ut16 r_swap_ut16(ut16 val) {
 return (val << 8) | (val >> 8 );
}
