
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Reil; } ;
struct TYPE_4__ {scalar_t__ seq_num; int addr; } ;
typedef TYPE_2__ RAnalEsil ;



__attribute__((used)) static int setup_reil_ins(RAnalEsil *esil, const char *op) {
 esil->Reil->addr++;
 esil->Reil->seq_num = 0;
 return 0;
}
