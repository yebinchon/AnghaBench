
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int architecture; int registers; } ;
typedef TYPE_1__ libqnxr_t ;




 int arm32 ;
 int eprintf (char*) ;
 int x86_32 ;

int qnxr_set_architecture (libqnxr_t *g, ut8 architecture) {
 if (!g) return -1;
 g->architecture = architecture;
 switch (architecture) {
 case 128:
  g->registers = x86_32;
  break;
 case 129:
  g->registers = arm32;
  break;
 default:
  eprintf ("Error unknown architecture set\n");
 }
 return 0;
}
