
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsL_checkint (int *,int) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_tostring (int *,int) ;
 int push_file_content (int *,int ,int) ;

__attribute__((used)) static void script_read_file(js_State *J)
{
    int limit = js_isundefined(J, 2) ? -1 : jsL_checkint(J, 2);
    push_file_content(J, js_tostring(J, 1), limit);
}
