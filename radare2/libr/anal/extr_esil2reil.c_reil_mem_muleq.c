
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* anal; } ;
struct TYPE_5__ {int bits; } ;
typedef TYPE_2__ RAnalEsil ;


 int REIL_MUL ;
 int reil_mem_bineq_n (TYPE_2__*,int ,int) ;

__attribute__((used)) static bool reil_mem_muleq(RAnalEsil *esil) { return reil_mem_bineq_n(esil, REIL_MUL, esil->anal->bits / 8); }
