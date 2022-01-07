
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int info; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {int k; void* f; int t; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int FuncState ;


 void* NO_JUMP ;



 int jumponcond (int *,TYPE_3__*,int) ;
 int luaK_concat (int *,int *,int) ;
 int luaK_dischargevars (int *,TYPE_3__*) ;
 int luaK_patchtohere (int *,void*) ;

__attribute__((used)) static void luaK_goiffalse (FuncState *fs, expdesc *e) {
  int pc;
  luaK_dischargevars(fs, e);
  switch (e->k) {
    case 128: case 130: {
      pc = NO_JUMP;
      break;
    }
    case 129: {
      pc = e->u.s.info;
      break;
    }
    default: {
      pc = jumponcond(fs, e, 1);
      break;
    }
  }
  luaK_concat(fs, &e->t, pc);
  luaK_patchtohere(fs, e->f);
  e->f = NO_JUMP;
}
