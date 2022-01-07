
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalEsil ;


 int UT32_MAX ;
 int esil_mem_muleq_n (int *,int,int ) ;

__attribute__((used)) static bool esil_mem_muleq4(RAnalEsil *esil) {
 return esil_mem_muleq_n (esil, 32, UT32_MAX);
}
