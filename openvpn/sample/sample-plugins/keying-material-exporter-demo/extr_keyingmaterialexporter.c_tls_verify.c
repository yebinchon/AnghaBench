
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int dummy; } ;
struct plugin {scalar_t__ type; } ;
struct openvpn_plugin_args_func_in {int current_cert; scalar_t__ per_client_context; scalar_t__ handle; } ;


 int OPENVPN_PLUGIN_FUNC_ERROR ;
 int OPENVPN_PLUGIN_FUNC_SUCCESS ;
 scalar_t__ SERVER ;
 int ovpn_err (char*) ;
 int session_user_set (struct session*,int ) ;

__attribute__((used)) static int
tls_verify(struct openvpn_plugin_args_func_in const *args)
{
    struct plugin *plugin = (struct plugin *)args->handle;
    struct session *sess = (struct session *)args->per_client_context;


    if (plugin->type != SERVER)
    {
        return OPENVPN_PLUGIN_FUNC_SUCCESS;
    }

    if (!args->current_cert)
    {
        ovpn_err("this example plugin requires client certificate");
        return OPENVPN_PLUGIN_FUNC_ERROR;
    }

    session_user_set(sess, args->current_cert);

    return OPENVPN_PLUGIN_FUNC_SUCCESS;
}
