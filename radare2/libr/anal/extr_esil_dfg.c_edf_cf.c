
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalEsil ;


 int edf_cf_constraint ;
 int edf_consume_1_use_old_new_push_1 (int *,char*,int ) ;

__attribute__((used)) static bool edf_cf(RAnalEsil *esil) {
 return edf_consume_1_use_old_new_push_1 (esil, "$c", edf_cf_constraint);
}
