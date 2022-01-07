
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int type; } ;
typedef TYPE_1__ DsoJsonInfo ;


 unsigned int DSO_JSON_END ;
 TYPE_1__ const* DSO_JSON_INFOS ;

__attribute__((used)) static const DsoJsonInfo* get_type_info (unsigned int type) {
 unsigned int i = 0;
 for (; DSO_JSON_INFOS[i].type != DSO_JSON_END; i++) {
  if (DSO_JSON_INFOS[i].type == type) return &DSO_JSON_INFOS[i];
 }
 return ((void*)0);
}
