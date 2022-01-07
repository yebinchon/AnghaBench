
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RBuffer ;


 int CHECK3INSTR (int *,int ,int) ;
 int r_buf_size (int *) ;
 int rjmp ;
 int rjmp_dest (int ,int *) ;
 int tmp_entry ;

__attribute__((used)) static bool check_buffer_rjmp(RBuffer *b) {
 CHECK3INSTR (b, rjmp, 4);
 ut64 dst = rjmp_dest (0, b);
 if (dst < 1 || dst > r_buf_size (b)) {
  return 0;
 }
 tmp_entry = dst;
 return 1;
}
