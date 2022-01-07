
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ifl; int * echo; } ;
struct TYPE_8__ {int (* fputs ) (TYPE_2__*,char*) ;TYPE_1__ state; } ;
struct TYPE_7__ {scalar_t__ fout; } ;
typedef TYPE_2__ Output ;


 int fprintf (scalar_t__,char*,char*) ;
 TYPE_4__* proc ;
 int stub1 (TYPE_2__*,char*) ;

int do_fputs(Output *out, char *str) {
 int i;
 int printed = 0;
 for (i = 0; i <= proc->state.ifl; i++) {
  if (!proc->state.echo[i]) {
   return printed;
  }
 }
 if (str[0]) {
  printed = 1;
 }
 if (proc->fputs) {
  proc->fputs (out, str);
 } else {
  if (out->fout) {
   fprintf (out->fout, "%s", str);
  }
 }
 return printed;
}
