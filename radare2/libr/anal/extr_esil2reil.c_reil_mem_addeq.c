
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* anal; } ;
struct TYPE_5__ {int bits; } ;
typedef TYPE_2__ RAnalEsil ;


 int REIL_ADD ;
 int reil_mem_bineq_n (TYPE_2__*,int ,int) ;

__attribute__((used)) static bool reil_mem_addeq(RAnalEsil *esil) { return reil_mem_bineq_n(esil, REIL_ADD, esil->anal->bits / 8); }
