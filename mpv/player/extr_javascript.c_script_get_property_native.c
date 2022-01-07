
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_node ;
typedef int mpv_handle ;
typedef int js_State ;


 int MPV_FORMAT_NODE ;
 int * jclient (int *) ;
 char* js_tostring (int *,int) ;
 int mpv_get_property (int *,char const*,int ,int *) ;
 int * new_af_mpv_node (void*) ;
 int pushed_error (int *,int,int) ;
 int pushnode (int *,int *) ;

__attribute__((used)) static void script_get_property_native(js_State *J, void *af)
{
    const char *name = js_tostring(J, 1);
    mpv_handle *h = jclient(J);
    mpv_node *presult_node = new_af_mpv_node(af);
    int e = mpv_get_property(h, name, MPV_FORMAT_NODE, presult_node);
    if (!pushed_error(J, e, 2))
        pushnode(J, presult_node);
}
