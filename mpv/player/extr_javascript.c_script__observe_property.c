
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_format ;
typedef int js_State ;


 int const MPV_FORMAT_DOUBLE ;
 int const MPV_FORMAT_FLAG ;
 int const MPV_FORMAT_NODE ;
 int const MPV_FORMAT_NONE ;
 int const MPV_FORMAT_STRING ;
 size_t checkopt (int *,int,char*,char const**,char*) ;
 int jclient (int *) ;
 int jsL_checkuint64 (int *,int) ;
 int js_tostring (int *,int) ;
 int mpv_observe_property (int ,int ,int ,int ) ;
 int push_status (int *,int) ;

__attribute__((used)) static void script__observe_property(js_State *J)
{
    const char *fmts[] = {"none", "native", "bool", "string", "number", ((void*)0)};
    const mpv_format mf[] = {MPV_FORMAT_NONE, MPV_FORMAT_NODE, MPV_FORMAT_FLAG,
                             MPV_FORMAT_STRING, MPV_FORMAT_DOUBLE};

    mpv_format f = mf[checkopt(J, 3, "none", fmts, "observe type")];
    int e = mpv_observe_property(jclient(J), jsL_checkuint64(J, 1),
                                             js_tostring(J, 2),
                                             f);
    push_status(J, e);
}
