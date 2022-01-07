
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int write (int,int *,int) ;

void print_bytes(const void *p, size_t len, bool big_endian) {
 size_t i;
 for (i = 0; i < len; ++i) {
  ut8 ch = ((ut8*) p)[big_endian ? (len - i - 1) : i];
  write (1, &ch, 1);
 }
}
