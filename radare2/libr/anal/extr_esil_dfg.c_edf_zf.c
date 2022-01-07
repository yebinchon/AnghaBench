
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalEsil ;


 int edf_use_new_push_1 (int *,char*,int ) ;
 int edf_zf_constraint ;

__attribute__((used)) static bool edf_zf(RAnalEsil *esil) {
 return edf_use_new_push_1 (esil, "$z", edf_zf_constraint);
}
