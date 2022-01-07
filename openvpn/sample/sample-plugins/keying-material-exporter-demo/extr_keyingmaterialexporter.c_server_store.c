
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {char* key; int user; } ;
struct plugin {int dummy; } ;
struct openvpn_plugin_args_func_in {scalar_t__ per_client_context; scalar_t__ handle; } ;
typedef int file ;


 int MAXPATH ;
 int file_store (char*,int ) ;
 int ovpn_note (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
server_store(struct openvpn_plugin_args_func_in const *args)
{
    struct plugin *plugin = (struct plugin *)args->handle;
    struct session *sess = (struct session *)args->per_client_context;

    char file[MAXPATH];
    snprintf(file, sizeof(file) - 1, "/tmp/openvpn_sso_%s", sess->key);
    ovpn_note("app session file: %s", file);
    file_store(file, sess->user);
}
