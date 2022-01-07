
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const ut64 ;
typedef int ut16 ;



__attribute__((used)) static ut64 r_bin_mz_va_to_la(const ut16 segment, const ut16 offset) {
 return (segment << 4) + offset;
}
