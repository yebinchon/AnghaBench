
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_8__ {TYPE_1__* anal; } ;
struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_6__ {int reg; } ;
typedef TYPE_2__ RRegItem ;
typedef TYPE_3__ RAnalEsil ;


 TYPE_2__* r_reg_get (int ,char const*,int) ;

__attribute__((used)) static ut8 esil_internal_sizeof_reg(RAnalEsil *esil, const char *r) {
 if (!esil || !esil->anal || !esil->anal->reg || !r) {
  return 0;
 }
 RRegItem *i = r_reg_get(esil->anal->reg, r, -1);
 return i ? (ut8)i->size : 0;
}
