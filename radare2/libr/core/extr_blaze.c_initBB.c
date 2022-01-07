
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* ut64 ;
typedef int bb_type_t ;
struct TYPE_3__ {int score; int reached; int called; int type; void* fail; void* jump; void* end; void* start; } ;
typedef TYPE_1__ bb_t ;



__attribute__((used)) static void initBB (bb_t *bb, ut64 start, ut64 end, ut64 jump, ut64 fail, bb_type_t type, int score, int reached, int called) {
 if (bb) {
  bb->start = start;
  bb->end = end;
  bb->jump = jump;
  bb->fail = fail;
  bb->type = type;
  bb->score = score;
  bb->reached = reached;
  bb->called = called;
 }
}
