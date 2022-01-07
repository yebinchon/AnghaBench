
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int * closef; int * f; } ;
typedef TYPE_1__ LStream ;


 int io_fclose ;
 TYPE_1__* newprefile (int *) ;

__attribute__((used)) static LStream *newfile (lua_State *L) {
  LStream *p = newprefile(L);
  p->f = ((void*)0);
  p->closef = &io_fclose;
  return p;
}
