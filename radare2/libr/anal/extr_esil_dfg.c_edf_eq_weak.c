
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ user; } ;
struct TYPE_5__ {int * cur; int * old; } ;
typedef int RGraphNode ;
typedef TYPE_1__ RAnalEsilDFG ;
typedef TYPE_2__ RAnalEsil ;


 int edf_consume_2_set_reg (TYPE_2__*) ;

__attribute__((used)) static bool edf_eq_weak(RAnalEsil *esil) {
 RAnalEsilDFG *edf = (RAnalEsilDFG *)esil->user;
 RGraphNode *o_old = edf->old;
 RGraphNode *o_new = edf->cur;
 if (!edf_consume_2_set_reg (esil)) {
  return 0;
 }

 edf->old = o_old ? o_old : ((void*)0);
 edf->cur = o_new ? o_new : ((void*)0);
 return 1;
}
