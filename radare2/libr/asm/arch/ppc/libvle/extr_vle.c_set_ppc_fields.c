
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int n; TYPE_1__* fields; } ;
typedef TYPE_2__ vle_t ;
typedef int ut32 ;
struct TYPE_8__ {int type; int * types; } ;
typedef TYPE_3__ ppc_t ;
struct TYPE_6__ {int value; int type; } ;
 int TYPE_NONE ;

__attribute__((used)) static void set_ppc_fields(vle_t * v, const ppc_t* p, ut32 data) {
 if (!v) {
  return;
 }
 switch (p->type) {
  case 133:
  case 130:
  case 137:
  {
   v->n = 0;
   if (p->types[0] != TYPE_NONE) {
    v->fields[0].value = (data & 0x3E00000) >> 21;
    v->fields[0].type = p->types[0];
    v->n++;
   }
   if (p->types[1] != TYPE_NONE) {
    v->fields[1].value = (data & 0x1F0000) >> 16;
    v->fields[1].type = p->types[1];
    v->n++;
   }
   if (p->types[2] != TYPE_NONE) {
    v->fields[2].value = (data & 0xF800) >> 11;
    v->fields[2].type = p->types[2];
    v->n++;
   }
  }
   break;
  case 128:
  {
   v->n = 1;
   v->fields[0].value = (data & 0x8000) >> 15;
   v->fields[0].type = p->types[0];
  }
   break;
  case 129:
  {
   v->n = 3;
   v->fields[1].value = (data & 0x3E00000) >> 21;
   v->fields[1].type = p->types[0];
   v->fields[0].value = (data & 0x1F0000) >> 16;
   v->fields[0].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
  }
   break;
  case 141:
  {
   v->n = 3;
   v->fields[0].value = (data & 0x3800000) >> 23;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
  }
   break;
  case 140:
  {
   v->n = 3;
   v->fields[0].value = (data & 0x0E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
  }
   break;
  case 139:
  {
   v->n = 3;
   v->fields[0].value = (data & 0x1E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
  }
   break;
  case 138:
  {
   v->n = 1;
   v->fields[0].value = (data & 0xE00000) >> 21;
   v->fields[0].type = p->types[0];
  }
   break;
  case 136:
  {
   v->n = 2;
   v->fields[0].value = (data & 0x3E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
  }
   break;
  case 142:
  {
   v->n = 4;
   v->fields[0].value = (data & 0x1E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
   v->fields[3].value = (data & 0x7C0) >> 6;
   v->fields[3].type = p->types[3];
  }
   break;
  case 131:
  {
   v->n = 1;
   v->fields[0].value = (data & 0x3E00000) >> 21;
   v->fields[0].type = p->types[0];
  }
   break;
  case 132:
  {
   v->n = 1;
   v->fields[0].value = (data & 0x3800000) >> 23;
   v->fields[0].type = p->types[0];
  }
   break;
  case 135:
  {
   v->n = 2;
   v->fields[0].value = (data & 0x1E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1FF800) >> 11;
   v->fields[1].type = p->types[1];
   break;
  }
  case 134:
  {
   v->n = 2;

   v->fields[1].value = (data & 0x1E00000) >> 21;
   v->fields[1].type = p->types[1];
   v->fields[0].value = (data & 0x1FF800) >> 11;
   v->fields[0].type = p->types[0];
  }
   break;
  case 143:
  default:
   v->n = 0;
   break;
 }
}
