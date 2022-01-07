
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int MP_VERBOSE (int ,char*,char const*) ;
 int jctx (int *) ;
 int js_call (int *,int ) ;
 int js_copy (int *,int ) ;
 int js_loadstring (int *,char const*,int ) ;
 int js_pop (int *,int) ;
 int js_tostring (int *,int) ;
 int push_file_content (int *,char const*,int) ;

__attribute__((used)) static void run_file(js_State *J, const char *fname)
{
    MP_VERBOSE(jctx(J), "Loading file %s\n", fname);
    push_file_content(J, fname, -1);
    js_loadstring(J, fname, js_tostring(J, -1));
    js_copy(J, 0);
    js_call(J, 0);
    js_pop(J, 2);
}
