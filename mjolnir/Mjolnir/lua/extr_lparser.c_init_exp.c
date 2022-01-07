
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int expkind ;
struct TYPE_4__ {int info; } ;
struct TYPE_5__ {TYPE_1__ u; int k; int t; int f; } ;
typedef TYPE_2__ expdesc ;


 int NO_JUMP ;

__attribute__((used)) static void init_exp (expdesc *e, expkind k, int i) {
  e->f = e->t = NO_JUMP;
  e->k = k;
  e->u.info = i;
}
