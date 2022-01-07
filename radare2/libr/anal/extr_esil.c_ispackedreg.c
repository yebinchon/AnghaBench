
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* anal; } ;
struct TYPE_7__ {scalar_t__ packed_size; } ;
struct TYPE_6__ {int reg; } ;
typedef TYPE_2__ RRegItem ;
typedef TYPE_3__ RAnalEsil ;


 TYPE_2__* r_reg_get (int ,char const*,int) ;

__attribute__((used)) static bool ispackedreg(RAnalEsil *esil, const char *str) {
 RRegItem *ri = r_reg_get (esil->anal->reg, str, -1);
 return ri? ri->packed_size > 0: 0;
}
