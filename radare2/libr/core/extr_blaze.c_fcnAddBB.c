
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bbs; int ends; int size; int score; } ;
typedef TYPE_1__ fcn_t ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ start; scalar_t__ end; scalar_t__ score; } ;
typedef TYPE_2__ bb_t ;


 scalar_t__ END ;
 int eprintf (char*) ;
 int r_list_append (int ,TYPE_2__*) ;

__attribute__((used)) static bool fcnAddBB (fcn_t *fcn, bb_t* block) {
 if (!fcn) {
  eprintf ("No function given to add a basic block\n");
  return 0;
 }
 fcn->score += block->score;
 fcn->size += block->end - block->start;
 if (block->type == END) {
  fcn->ends++;
 }
 if (!fcn->bbs) {
  eprintf ("Block list not initialized\n");
  return 0;
 }
 r_list_append (fcn->bbs, block);
 return 1;
}
