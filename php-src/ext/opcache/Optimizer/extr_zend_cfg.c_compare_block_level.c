
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int level; } ;
typedef TYPE_1__ block_info ;



__attribute__((used)) static int compare_block_level(const block_info *a, const block_info *b) {
 return b->level - a->level;
}
