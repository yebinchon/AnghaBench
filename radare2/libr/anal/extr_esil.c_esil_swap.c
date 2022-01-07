
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** stack; int stackptr; } ;
typedef TYPE_1__ RAnalEsil ;



__attribute__((used)) static bool esil_swap(RAnalEsil *esil) {
 char *tmp;
 if (!esil || !esil->stack || esil->stackptr < 2) {
  return 0;
 }
 if (!esil->stack[esil->stackptr-1] || !esil->stack[esil->stackptr-2]) {
  return 0;
 }
 tmp = esil->stack[esil->stackptr-1];
 esil->stack[esil->stackptr-1] = esil->stack[esil->stackptr-2];
 esil->stack[esil->stackptr-2] = tmp;
 return 1;
}
