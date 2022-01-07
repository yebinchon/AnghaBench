
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int MP_WARN (int ,char*,char const*) ;
 int jctx (int *) ;

__attribute__((used)) static void report_handler(js_State *J, const char *msg)
{
    MP_WARN(jctx(J), "[JS] %s\n", msg);
}
