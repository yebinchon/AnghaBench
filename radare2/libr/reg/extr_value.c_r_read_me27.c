
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut27 ;


 int r_mem_copybits_delta (int *,int,int const*,int,int) ;

__attribute__((used)) static ut27 r_read_me27(const ut8 *buf, int boff) {
 ut27 ret = 0;
 r_mem_copybits_delta ((ut8 *)&ret, 18, buf, boff, 9);
 r_mem_copybits_delta ((ut8 *)&ret, 9, buf, boff + 9, 9);
 r_mem_copybits_delta ((ut8 *)&ret, 0, buf, boff + 18, 9);
 return ret;
}
