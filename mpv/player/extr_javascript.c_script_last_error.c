
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_2__ {int last_error_str; } ;


 TYPE_1__* jctx (int *) ;
 int js_pushstring (int *,int ) ;

__attribute__((used)) static void script_last_error(js_State *J)
{
    js_pushstring(J, jctx(J)->last_error_str);
}
