
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int ut64 ;
struct r_magic {int flag; int type; } ;
typedef unsigned int int64_t ;
typedef unsigned int int32_t ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ RMagic ;
 int R_MAGIC_CHECK ;
 int UNSIGNED ;
 int file_magwarn (TYPE_1__*,char*,int) ;

ut64 file_signextend(RMagic *ms, struct r_magic *m, ut64 v) {
 if (!(m->flag & UNSIGNED)) {
  switch (m->type) {





  case 155:
   v = (char) v;
   break;
  case 129:
  case 157:
  case 141:
   v = (short) v;
   break;
  case 154:
  case 165:
  case 149:
  case 138:
  case 150:
  case 162:
  case 146:
  case 137:
  case 139:
  case 161:
  case 145:
  case 136:
  case 151:
  case 163:
  case 147:
   v = (int32_t) v;
   break;
  case 132:
  case 158:
  case 142:
  case 134:
  case 133:
  case 160:
  case 159:
  case 144:
  case 143:
  case 152:
  case 164:
  case 148:
   v = (int64_t) v;
   break;
  case 128:
  case 135:
  case 156:
  case 140:
  case 131:
  case 130:
  case 153:
   break;
  default:
   if (ms->flags & R_MAGIC_CHECK) {
    file_magwarn (ms, "cannot happen: m->type=%d\n",
     m->type);
   }
   return ~0U;
  }
 }
 return v;
}
