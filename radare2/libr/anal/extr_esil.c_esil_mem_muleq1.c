
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalEsil ;


 int UT8_MAX ;
 int esil_mem_muleq_n (int *,int,int ) ;

__attribute__((used)) static bool esil_mem_muleq1(RAnalEsil *esil) {
 return esil_mem_muleq_n (esil, 8, UT8_MAX);
}
