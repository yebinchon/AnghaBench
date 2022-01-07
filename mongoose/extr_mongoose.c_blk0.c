
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union char64long16 {int* l; } ;
typedef int uint32_t ;


 int rol (int,int) ;

__attribute__((used)) static uint32_t blk0(union char64long16 *block, int i) {


  block->l[i] =
      (rol(block->l[i], 24) & 0xFF00FF00) | (rol(block->l[i], 8) & 0x00FF00FF);

  return block->l[i];
}
