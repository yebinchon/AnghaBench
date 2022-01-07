
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int predecessor_offset; int idom; int loop_header; int level; int children; int next_child; scalar_t__ predecessors_count; scalar_t__ successors_count; int successors_storage; int successors; scalar_t__ flags; } ;
typedef TYPE_1__ zend_basic_block ;



__attribute__((used)) static void initialize_block(zend_basic_block *block) {
 block->flags = 0;
 block->successors = block->successors_storage;
 block->successors_count = 0;
 block->predecessors_count = 0;
 block->predecessor_offset = -1;
 block->idom = -1;
 block->loop_header = -1;
 block->level = -1;
 block->children = -1;
 block->next_child = -1;
}
