
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef int result_t ;
typedef int openvpn_x509_cert_t ;


 int D_HANDSHAKE ;
 int D_TLS_DEBUG ;
 int FAILURE ;
 int SUCCESS ;
 int argv_msg_prefix (int ,struct argv*,char*) ;
 struct argv argv_new () ;
 int argv_parse_cmd (struct argv*,char const*) ;
 int argv_printf_cat (struct argv*,char*,int,char*) ;
 int argv_reset (struct argv*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,int,char*) ;
 int openvpn_run_script (struct argv*,struct env_set*,int ,char*) ;
 int platform_unlink (char const*) ;
 int setenv_str (struct env_set*,char*,char const*) ;
 char* verify_cert_export_cert (int *,char const*,struct gc_arena*) ;

__attribute__((used)) static result_t
verify_cert_call_command(const char *verify_command, struct env_set *es,
                         int cert_depth, openvpn_x509_cert_t *cert, char *subject, const char *verify_export_cert)
{
    const char *tmp_file = ((void*)0);
    int ret;
    struct gc_arena gc = gc_new();
    struct argv argv = argv_new();

    setenv_str(es, "script_type", "tls-verify");

    if (verify_export_cert)
    {
        tmp_file = verify_cert_export_cert(cert, verify_export_cert, &gc);
        if (!tmp_file)
        {
            ret = 0;
            goto cleanup;
        }
        setenv_str(es, "peer_cert", tmp_file);
    }

    argv_parse_cmd(&argv, verify_command);
    argv_printf_cat(&argv, "%d %s", cert_depth, subject);

    argv_msg_prefix(D_TLS_DEBUG, &argv, "TLS: executing verify command");
    ret = openvpn_run_script(&argv, es, 0, "--tls-verify script");

    if (verify_export_cert)
    {
        if (tmp_file)
        {
            platform_unlink(tmp_file);
        }
    }

cleanup:
    gc_free(&gc);
    argv_reset(&argv);

    if (ret)
    {
        msg(D_HANDSHAKE, "VERIFY SCRIPT OK: depth=%d, %s",
            cert_depth, subject);
        return SUCCESS;
    }

    msg(D_HANDSHAKE, "VERIFY SCRIPT ERROR: depth=%d, %s",
        cert_depth, subject);
    return FAILURE;
}
