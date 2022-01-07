
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jclient (int *) ;
 int jsL_checkuint64 (int *,int) ;
 int mpv_unobserve_property (int ,int ) ;
 int push_status (int *,int) ;

__attribute__((used)) static void script__unobserve_property(js_State *J)
{
    int e = mpv_unobserve_property(jclient(J), jsL_checkuint64(J, 1));
    push_status(J, e);
}
