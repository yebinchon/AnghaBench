
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_2__ {scalar_t__ s; } ;
struct r_magic {int type; int flag; int vallen; TYPE_1__ value; } ;


 int BINTEST ;
 int file_looks_utf8 (int const*,int ,int *,int *) ;

__attribute__((used)) static void set_test_type(struct r_magic *mstart, struct r_magic *m) {
 switch (m->type) {
 case 156:
 case 129:
 case 139:
 case 155:
 case 158:
 case 162:
 case 166:
 case 141:
 case 145:
 case 149:
 case 150:
 case 163:
 case 146:
 case 138:
 case 137:
 case 136:
 case 132:
 case 142:
 case 159:
 case 134:
 case 144:
 case 161:
 case 133:
 case 143:
 case 160:
 case 152:
 case 164:
 case 147:
 case 153:
 case 165:
 case 148:
 case 128:
 case 135:
 case 157:
 case 140:

  mstart->flag |= BINTEST;
  break;
 case 131:
 case 130:

  if (file_looks_utf8 ((const ut8 *)m->value.s, m->vallen, ((void*)0), ((void*)0)) == 0) {
   mstart->flag |= BINTEST;
  }
  break;
 case 154:


  break;
 case 151:
 default:

  break;
 }
}
