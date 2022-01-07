
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int user; int key; } ;
struct plugin {int type; } ;
struct openvpn_plugin_args_func_return {int dummy; } ;
struct openvpn_plugin_args_func_in {int envp; scalar_t__ per_client_context; scalar_t__ handle; } ;



 int OPENVPN_PLUGIN_FUNC_ERROR ;
 int OPENVPN_PLUGIN_FUNC_SUCCESS ;

 int client_store (struct openvpn_plugin_args_func_in const*) ;
 char* get_env (char*,int ) ;
 int ovpn_note (char*,int ) ;
 int server_store (struct openvpn_plugin_args_func_in const*) ;
 int snprintf (int ,int,char*,char const*) ;

__attribute__((used)) static int
tls_final(struct openvpn_plugin_args_func_in const *args,
          struct openvpn_plugin_args_func_return *rv)
{
    struct plugin *plugin = (struct plugin *)args->handle;
    struct session *sess = (struct session *)args->per_client_context;

    const char *key;
    if (!(key = get_env("exported_keying_material", args->envp)))
    {
        return OPENVPN_PLUGIN_FUNC_ERROR;
    }

    snprintf(sess->key, sizeof(sess->key) - 1, "%s", key);
    ovpn_note("app session key:  %s", sess->key);

    switch (plugin->type)
    {
        case 128:
            server_store(args);
            break;

        case 129:
            client_store(args);
            return OPENVPN_PLUGIN_FUNC_SUCCESS;
    }

    ovpn_note("app session user: %s", sess->user);
    return OPENVPN_PLUGIN_FUNC_SUCCESS;
}
