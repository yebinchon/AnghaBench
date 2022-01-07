
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int string; } ;
struct TYPE_8__ {TYPE_2__ block; TYPE_1__ str_struct; } ;
struct TYPE_9__ {int form; TYPE_3__ encoding; } ;
typedef TYPE_4__ RBinDwarfAttrValue ;
 int R_FREE (int ) ;

__attribute__((used)) static void r_bin_dwarf_free_attr_value(RBinDwarfAttrValue *val) {
 if (!val) {
  return;
 }
 switch (val->form) {
 case 128:
 case 129:
  R_FREE (val->encoding.str_struct.string);
  break;
 case 133:
 case 132:
 case 131:
 case 130:
  R_FREE (val->encoding.block.data);
  break;
 default:
  break;
 };
}
