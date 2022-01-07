
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* gpr; } ;
typedef TYPE_1__ ppc_trap_frame_t ;


 int printf (char*,...) ;

int MmuPageMiss(int trapCode, ppc_trap_frame_t *trap)
{
    int i;
    printf("TRAP %x\n", trapCode);
    for( i = 0; i < 40; i++ )
    printf("r[%d] %x\n", i, trap->gpr[i]);
    printf("HALT!\n");
    while(1);
}
