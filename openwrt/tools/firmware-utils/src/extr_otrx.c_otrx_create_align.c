
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int otrx_create_append_zeros (int *,size_t) ;

__attribute__((used)) static ssize_t otrx_create_align(FILE *trx, size_t curr_offset, size_t alignment) {
 if (curr_offset & (alignment - 1)) {
  size_t length = alignment - (curr_offset % alignment);
  return otrx_create_append_zeros(trx, length);
 }

 return 0;
}
