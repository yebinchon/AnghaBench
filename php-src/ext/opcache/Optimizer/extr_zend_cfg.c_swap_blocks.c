
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_info ;



__attribute__((used)) static void swap_blocks(block_info *a, block_info *b) {
 block_info tmp = *a;
 *a = *b;
 *b = tmp;
}
