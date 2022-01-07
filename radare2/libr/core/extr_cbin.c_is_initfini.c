
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ RBinAddr ;






__attribute__((used)) static inline bool is_initfini(RBinAddr *entry) {
 switch (entry->type) {
 case 129:
 case 130:
 case 128:
  return 1;
 default:
  return 0;
 }
}
