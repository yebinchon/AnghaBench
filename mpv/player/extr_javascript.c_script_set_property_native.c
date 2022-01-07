
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_node ;
typedef int mpv_handle ;
typedef int js_State ;


 int MPV_FORMAT_NODE ;
 int * jclient (int *) ;
 int js_tostring (int *,int) ;
 int makenode (void*,int *,int *,int) ;
 int mpv_set_property (int *,int ,int ,int *) ;
 int push_status (int *,int) ;

__attribute__((used)) static void script_set_property_native(js_State *J, void *af)
{
    mpv_node node;
    makenode(af, &node, J, 2);
    mpv_handle *h = jclient(J);
    int e = mpv_set_property(h, js_tostring(J, 1), MPV_FORMAT_NODE, &node);
    push_status(J, e);
}
