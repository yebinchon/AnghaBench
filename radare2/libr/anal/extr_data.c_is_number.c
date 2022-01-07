
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;


 scalar_t__ UT32_MAX ;
 scalar_t__ r_mem_get_num (int const*,int) ;

__attribute__((used)) static int is_number(const ut8 *buf, int size) {
 ut64 n = r_mem_get_num (buf, size);
 return (n < UT32_MAX)? (int)n: 0;
}
