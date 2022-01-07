
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* anal; } ;
struct TYPE_8__ {int bits; } ;
typedef TYPE_2__ RAnalEsil ;


 int esil_mem_muleq1 (TYPE_2__*) ;
 int esil_mem_muleq2 (TYPE_2__*) ;
 int esil_mem_muleq4 (TYPE_2__*) ;
 int esil_mem_muleq8 (TYPE_2__*) ;

__attribute__((used)) static bool esil_mem_muleq(RAnalEsil *esil) {
 switch (esil->anal->bits) {
 case 64: return esil_mem_muleq8 (esil);
 case 32: return esil_mem_muleq4 (esil);
 case 16: return esil_mem_muleq2 (esil);
 case 8: return esil_mem_muleq1 (esil);
 }
 return 0;
}
