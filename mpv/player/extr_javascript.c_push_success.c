
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jctx (int *) ;
 int js_pushboolean (int *,int) ;
 int set_last_error (int ,int ,int *) ;

__attribute__((used)) static void push_success(js_State *J)
{
    set_last_error(jctx(J), 0, ((void*)0));
    js_pushboolean(J, 1);
}
