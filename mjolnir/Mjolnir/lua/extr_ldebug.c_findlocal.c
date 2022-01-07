
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_17__ {int top; TYPE_5__* ci; } ;
typedef TYPE_4__ lua_State ;
struct TYPE_14__ {int base; } ;
struct TYPE_15__ {TYPE_1__ l; } ;
struct TYPE_18__ {int func; TYPE_3__* next; TYPE_2__ u; } ;
struct TYPE_16__ {int func; } ;
struct TYPE_13__ {int p; } ;
typedef int StkId ;
typedef TYPE_5__ CallInfo ;


 TYPE_11__* ci_func (TYPE_5__*) ;
 int currentpc (TYPE_5__*) ;
 char const* findvararg (TYPE_5__*,int,int*) ;
 scalar_t__ isLua (TYPE_5__*) ;
 char* luaF_getlocalname (int ,int,int ) ;

__attribute__((used)) static const char *findlocal (lua_State *L, CallInfo *ci, int n,
                              StkId *pos) {
  const char *name = ((void*)0);
  StkId base;
  if (isLua(ci)) {
    if (n < 0)
      return findvararg(ci, -n, pos);
    else {
      base = ci->u.l.base;
      name = luaF_getlocalname(ci_func(ci)->p, n, currentpc(ci));
    }
  }
  else
    base = ci->func + 1;
  if (name == ((void*)0)) {
    StkId limit = (ci == L->ci) ? L->top : ci->next->func;
    if (limit - base >= n && n > 0)
      name = "(*temporary)";
    else
      return ((void*)0);
  }
  *pos = base + (n - 1);
  return name;
}
