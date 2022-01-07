
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {TYPE_1__* mpctx; } ;
struct TYPE_3__ {int global; } ;


 TYPE_2__* jctx (int *) ;
 int js_pushstring (int *,int ) ;
 char* js_tostring (int *,int) ;
 int mp_get_user_path (void*,int ,char const*) ;

__attribute__((used)) static void script_get_user_path(js_State *J, void *af)
{
    const char *path = js_tostring(J, 1);
    js_pushstring(J, mp_get_user_path(af, jctx(J)->mpctx->global, path));
}
