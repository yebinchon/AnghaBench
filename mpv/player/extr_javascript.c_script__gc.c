
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_gc (int *,int) ;
 scalar_t__ js_toboolean (int *,int) ;
 int push_success (int *) ;

__attribute__((used)) static void script__gc(js_State *J)
{
    js_gc(J, js_toboolean(J, 1) ? 1 : 0);
    push_success(J);
}
