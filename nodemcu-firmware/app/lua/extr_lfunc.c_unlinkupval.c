
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* next; TYPE_3__* prev; } ;
struct TYPE_5__ {TYPE_2__ l; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_3__ UpVal ;


 int lua_assert (int) ;

__attribute__((used)) static void unlinkupval (UpVal *uv) {
  lua_assert(uv->u.l.next->u.l.prev == uv && uv->u.l.prev->u.l.next == uv);
  uv->u.l.next->u.l.prev = uv->u.l.prev;
  uv->u.l.prev->u.l.next = uv->u.l.next;
}
