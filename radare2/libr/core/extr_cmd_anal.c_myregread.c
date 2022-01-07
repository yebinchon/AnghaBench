
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_5__ {int regread; int regs; int inputregs; int regwrite; } ;
struct TYPE_4__ {TYPE_2__* user; } ;
typedef TYPE_1__ RAnalEsil ;
typedef TYPE_2__ AeaStats ;


 int IS_DIGIT (char const) ;
 int contains (int ,char const*) ;
 int r_list_push (int ,int ) ;
 int strdup (char const*) ;

__attribute__((used)) static int myregread(RAnalEsil *esil, const char *name, ut64 *val, int *len) {
 AeaStats *stats = esil->user;
 if (!IS_DIGIT (*name)) {
  if (!contains (stats->inputregs, name)) {
   if (!contains (stats->regwrite, name)) {
    r_list_push (stats->inputregs, strdup (name));
   }
  }
  if (!contains (stats->regs, name)) {
   r_list_push (stats->regs, strdup (name));
  }
  if (!contains (stats->regread, name)) {
   r_list_push (stats->regread, strdup (name));
  }
 }
 return 0;
}
