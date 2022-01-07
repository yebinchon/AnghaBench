
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_node ;
typedef int js_State ;


 int jclient (int *) ;
 int makenode (void*,int *,int *,int) ;
 int mpv_command_node (int ,int *,int *) ;
 int * new_af_mpv_node (void*) ;
 int pushed_error (int *,int,int) ;
 int pushnode (int *,int *) ;

__attribute__((used)) static void script_command_native(js_State *J, void *af)
{
    mpv_node cmd;
    makenode(af, &cmd, J, 1);
    mpv_node *presult_node = new_af_mpv_node(af);
    int e = mpv_command_node(jclient(J), &cmd, presult_node);
    if (!pushed_error(J, e, 2))
        pushnode(J, presult_node);
}
