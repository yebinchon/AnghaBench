
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
 int js_pushstring (int *,char*) ;
 char* js_tostring (int *,int) ;
 char* mp_find_config_file (void*,int ,char const*) ;
 int push_failure (int *,char*) ;

__attribute__((used)) static void script_find_config_file(js_State *J, void *af)
{
    const char *fname = js_tostring(J, 1);
    char *path = mp_find_config_file(af, jctx(J)->mpctx->global, fname);
    if (path) {
        js_pushstring(J, path);
    } else {
        push_failure(J, "not found");
    }
}
