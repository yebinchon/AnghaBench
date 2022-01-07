
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
typedef int global_State ;
struct TYPE_5__ {int marked; struct TYPE_5__* next; } ;
typedef TYPE_1__ GCObject ;


 int * G (int *) ;
 int cast_byte (int) ;
 int freeobj (int *,TYPE_1__*) ;
 scalar_t__ isdeadm (int,int) ;
 int luaC_white (int *) ;
 int maskcolors ;
 int otherwhite (int *) ;

__attribute__((used)) static GCObject **sweeplist (lua_State *L, GCObject **p, lu_mem count) {
  global_State *g = G(L);
  int ow = otherwhite(g);
  int white = luaC_white(g);
  while (*p != ((void*)0) && count-- > 0) {
    GCObject *curr = *p;
    int marked = curr->marked;
    if (isdeadm(ow, marked)) {
      *p = curr->next;
      freeobj(L, curr);
    }
    else {
      curr->marked = cast_byte((marked & maskcolors) | white);
      p = &curr->next;
    }
  }
  return (*p == ((void*)0)) ? ((void*)0) : p;
}
