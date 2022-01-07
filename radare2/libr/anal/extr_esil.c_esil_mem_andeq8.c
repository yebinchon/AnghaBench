
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalEsil ;


 int esil_mem_andeq_n (int *,int) ;

__attribute__((used)) static bool esil_mem_andeq8(RAnalEsil *esil) {
 return esil_mem_andeq_n (esil, 64);
}
