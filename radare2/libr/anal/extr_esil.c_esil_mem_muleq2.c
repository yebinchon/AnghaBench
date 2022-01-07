
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalEsil ;


 int UT16_MAX ;
 int esil_mem_muleq_n (int *,int,int ) ;

__attribute__((used)) static bool esil_mem_muleq2(RAnalEsil *esil) {
 return esil_mem_muleq_n (esil, 16, UT16_MAX);
}
