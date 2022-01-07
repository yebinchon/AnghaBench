
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_7__ {int opcode; } ;
struct TYPE_8__ {int member_0; } ;
struct TYPE_9__ {TYPE_1__ b; TYPE_2__ member_0; } ;
typedef TYPE_3__ op ;


 int instrGet (int const,TYPE_3__*,int const,int const) ;
 int instrGetCycles (TYPE_3__*) ;
 int instrPrint (char*,TYPE_3__*) ;

int dcpu16_disasm(char *out, const ut16* inp, int len, int *cost) {
 op o = {{0}};
 int delta = instrGet (inp[0], &o, inp[1], inp[2]);
 if (cost) *cost = instrGetCycles(&o) + ((o.b.opcode >= 0xc)?1:0);
 instrPrint (out, &o);

 return delta<<1;
}
