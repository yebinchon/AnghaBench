
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
typedef int global_State ;
struct TYPE_12__ {int openupval; } ;
struct TYPE_11__ {scalar_t__ tt; int marked; TYPE_1__* next; } ;
struct TYPE_10__ {TYPE_6__ gch; } ;
typedef TYPE_1__ GCObject ;


 int FIXEDBIT ;
 int * G (int *) ;
 scalar_t__ LUA_TTHREAD ;
 int SFIXEDBIT ;
 int WHITEBITS ;
 int bitmask (int ) ;
 int freeobj (int *,TYPE_1__*) ;
 TYPE_7__* gco2th (TYPE_1__*) ;
 int isLFSobject (TYPE_6__*) ;
 scalar_t__ isdead (int *,TYPE_1__*) ;
 int lua_assert (int) ;
 int makewhite (int *,TYPE_1__*) ;
 int otherwhite (int *) ;
 int sweepwholelist (int *,int *) ;
 scalar_t__ testbit (int,int ) ;

__attribute__((used)) static GCObject **sweeplist (lua_State *L, GCObject **p, lu_mem count) {
  GCObject *curr;
  global_State *g = G(L);
  int deadmask = otherwhite(g);
  while ((curr = *p) != ((void*)0) && count-- > 0) {
    lua_assert(!isLFSobject(&(curr->gch)) || curr->gch.tt == LUA_TTHREAD);
    if (curr->gch.tt == LUA_TTHREAD)
      sweepwholelist(L, &gco2th(curr)->openupval);
    if ((curr->gch.marked ^ WHITEBITS) & deadmask) {
      lua_assert(!isdead(g, curr) || testbit(curr->gch.marked, FIXEDBIT));
      makewhite(g, curr);
      p = &curr->gch.next;
    }
    else {
      lua_assert(isdead(g, curr) || deadmask == bitmask(SFIXEDBIT));
      *p = curr->gch.next;
      freeobj(L, curr);
    }
  }
  return p;
}
