
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plugin_list {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef int result_t ;
typedef int openvpn_x509_cert_t ;


 int D_HANDSHAKE ;
 int FAILURE ;
 int OPENVPN_PLUGIN_FUNC_SUCCESS ;
 int OPENVPN_PLUGIN_TLS_VERIFY ;
 int SUCCESS ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int,char*) ;
 int argv_reset (struct argv*) ;
 int msg (int ,char*,int,char*) ;
 int plugin_call_ssl (struct plugin_list const*,int ,struct argv*,int *,struct env_set*,int,int *) ;
 scalar_t__ plugin_defined (struct plugin_list const*,int ) ;

__attribute__((used)) static result_t
verify_cert_call_plugin(const struct plugin_list *plugins, struct env_set *es,
                        int cert_depth, openvpn_x509_cert_t *cert, char *subject)
{
    if (plugin_defined(plugins, OPENVPN_PLUGIN_TLS_VERIFY))
    {
        int ret;
        struct argv argv = argv_new();

        argv_printf(&argv, "%d %s", cert_depth, subject);

        ret = plugin_call_ssl(plugins, OPENVPN_PLUGIN_TLS_VERIFY, &argv, ((void*)0), es, cert_depth, cert);

        argv_reset(&argv);

        if (ret == OPENVPN_PLUGIN_FUNC_SUCCESS)
        {
            msg(D_HANDSHAKE, "VERIFY PLUGIN OK: depth=%d, %s",
                cert_depth, subject);
        }
        else
        {
            msg(D_HANDSHAKE, "VERIFY PLUGIN ERROR: depth=%d, %s",
                cert_depth, subject);
            return FAILURE;
        }
    }
    return SUCCESS;
}
