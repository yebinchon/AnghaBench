
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t opcode; int b_type; int a_type; } ;
struct TYPE_7__ {size_t opcode; int a_type; } ;
struct TYPE_6__ {scalar_t__ opcode; } ;
struct TYPE_9__ {TYPE_3__ b; TYPE_2__ n; TYPE_1__ code; } ;
typedef TYPE_4__ op ;


 int needWord (int ) ;
 int* opCycle ;
 int* opCycleB ;

__attribute__((used)) static int instrGetCycles(const op* o) {
 if (o->code.opcode == 0)
  return opCycleB[o->n.opcode] + needWord(o->n.a_type);
 return opCycle[o->b.opcode] + needWord(o->b.a_type)
  + needWord(o->b.b_type);
}
