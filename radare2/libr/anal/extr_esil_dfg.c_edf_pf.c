
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalEsil ;


 int edf_pf_constraint ;
 int edf_use_new_push_1 (int *,char*,int ) ;

__attribute__((used)) static bool edf_pf(RAnalEsil *esil) {
 return edf_use_new_push_1 (esil, "$p", edf_pf_constraint);
}
