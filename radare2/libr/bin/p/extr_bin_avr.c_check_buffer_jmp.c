
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RBuffer ;


 int CHECK4INSTR (int *,int ,int) ;
 int jmp ;
 int jmp_dest (int *,int ) ;
 int r_buf_size (int *) ;
 int tmp_entry ;

__attribute__((used)) static bool check_buffer_jmp(RBuffer *b) {
 CHECK4INSTR (b, jmp, 4);
 ut64 dst = jmp_dest (b, 0);
 if (dst < 1 || dst > r_buf_size (b)) {
  return 0;
 }
 tmp_entry = dst;
 return 1;
}
