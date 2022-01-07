
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {int status; TYPE_9__* errorJmp; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_14__ {int status; } ;
struct TYPE_12__ {int (* panic ) (TYPE_1__*) ;} ;


 TYPE_10__* G (TYPE_1__*) ;
 int LUAI_THROW (TYPE_1__*,TYPE_9__*) ;
 int cast_byte (int) ;
 int lua_unlock (TYPE_1__*) ;
 int resetstack (TYPE_1__*,int) ;
 int stub1 (TYPE_1__*) ;
 int unfixedstack (TYPE_1__*) ;
 int unset_block_gc (TYPE_1__*) ;

void luaD_throw (lua_State *L, int errcode) {
  unfixedstack(L);
  unset_block_gc(L);
  if (L->errorJmp) {
    L->errorJmp->status = errcode;
    LUAI_THROW(L, L->errorJmp);
  }
  else {
    L->status = cast_byte(errcode);
    if (G(L)->panic) {
      resetstack(L, errcode);
      lua_unlock(L);
      G(L)->panic(L);
    }

  }
}
