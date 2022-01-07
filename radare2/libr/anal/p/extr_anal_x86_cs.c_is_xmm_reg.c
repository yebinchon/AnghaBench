
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ cs_x86_op ;
__attribute__((used)) static bool is_xmm_reg(cs_x86_op op) {
 switch (op.reg) {
 case 159:
 case 158:
 case 147:
 case 136:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 157:
 case 156:
 case 155:
 case 154:
 case 153:
 case 152:
 case 151:
 case 150:
 case 149:
 case 148:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 135:
 case 134: return 1;
 default: return 0;
 }
}
