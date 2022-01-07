
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_magic {int type; int vallen; int reln; } ;
 int MULT ;
 size_t R_MAX (int,int) ;
 int abort () ;
 int eprintf (char*,int) ;

__attribute__((used)) static size_t apprentice_r_magic_strength(const struct r_magic *m) {

 size_t val = 2 * 10;

 switch (m->type) {
 case 153:
  return 0;
 case 155:
  val += 1 * 10;
  break;
 case 129:
 case 141:
 case 157:
  val += 2 * 10;
  break;
 case 139:
 case 145:
 case 161:
 case 136:
  val += 4 * 10;
  break;
 case 135:
 case 128:
  val += m->vallen * 10;
  break;
 case 156:
 case 140:
  val += m->vallen * 10 / 2;
  break;
 case 130:
 case 131:
  val += m->vallen * R_MAX (10 / m->vallen, 1);
  break;
 case 154:
 case 149:
 case 165:
 case 138:
 case 150:
 case 146:
 case 162:
 case 137:
 case 151:
 case 163:
 case 147:
  val += 4 * 10;
  break;
 case 132:
 case 158:
 case 142:
 case 134:
 case 144:
 case 160:
 case 133:
 case 143:
 case 159:
 case 152:
 case 164:
 case 148:
  val += 8 * 10;
  break;
 default:
  eprintf ("Bad type %d\n", m->type);
  abort();
 }

 switch (m->reln) {
 case 'x':
 case '!':
  val = 0;
  break;
 case '=':
  val += 10;
  break;
 case '>':
 case '<':
  val -= 2 * 10;
  break;
 case '^':
 case '&':
  val -= 10;
  break;
 default:
  eprintf ("Bad relation %c\n", m->reln);
  abort();
 }
 return val? val: 1;
}
