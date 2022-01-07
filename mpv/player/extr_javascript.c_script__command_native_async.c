
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mpv_node {int dummy; } ;
typedef int js_State ;


 int jclient (int *) ;
 int jsL_checkuint64 (int *,int) ;
 int makenode (void*,struct mpv_node*,int *,int) ;
 int mpv_command_node_async (int ,int ,struct mpv_node*) ;
 int push_status (int *,int ) ;

__attribute__((used)) static void script__command_native_async(js_State *J, void *af)
{
    uint64_t id = jsL_checkuint64(J, 1);
    struct mpv_node node;
    makenode(af, &node, J, 2);
    push_status(J, mpv_command_node_async(jclient(J), id, &node));
}
