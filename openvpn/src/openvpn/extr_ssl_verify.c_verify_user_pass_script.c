
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_pass {char const* username; char* password; } ;
struct tls_session {char* common_name; TYPE_1__* opt; } ;
struct tls_multi {int dummy; } ;
struct status_output {int dummy; } ;
struct gc_arena {int dummy; } ;
struct argv {int dummy; } ;
struct TYPE_2__ {int ssl_flags; int es; scalar_t__ auth_user_pass_verify_script_via_file; int auth_user_pass_verify_script; int tmp_dir; } ;


 int D_TLS_ERRORS ;
 int SSLF_AUTH_USER_PASS_OPTIONAL ;
 int STATUS_OUTPUT_WRITE ;
 int add_session_token_env (struct tls_session*,struct tls_multi*,struct user_pass const*) ;
 struct argv argv_new () ;
 int argv_parse_cmd (struct argv*,int ) ;
 int argv_printf_cat (struct argv*,char*,char const*) ;
 int argv_reset (struct argv*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,...) ;
 int openvpn_run_script (struct argv*,int ,int ,char*) ;
 char* platform_create_temp_file (int ,char*,struct gc_arena*) ;
 int platform_unlink (char const*) ;
 int setenv_del (int ,char*) ;
 int setenv_str (int ,char*,char*) ;
 int setenv_untrusted (struct tls_session*) ;
 int status_close (struct status_output*) ;
 struct status_output* status_open (char const*,int ,int,int *,int ) ;
 int status_printf (struct status_output*,char*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static bool
verify_user_pass_script(struct tls_session *session, struct tls_multi *multi,
                        const struct user_pass *up)
{
    struct gc_arena gc = gc_new();
    struct argv argv = argv_new();
    const char *tmp_file = "";
    bool ret = 0;


    if ((session->opt->ssl_flags & SSLF_AUTH_USER_PASS_OPTIONAL) || strlen(up->username))
    {

        setenv_str(session->opt->es, "script_type", "user-pass-verify");

        if (session->opt->auth_user_pass_verify_script_via_file)
        {
            struct status_output *so;

            tmp_file = platform_create_temp_file(session->opt->tmp_dir, "up",
                                                 &gc);
            if (tmp_file)
            {
                so = status_open(tmp_file, 0, -1, ((void*)0), STATUS_OUTPUT_WRITE);
                status_printf(so, "%s", up->username);
                status_printf(so, "%s", up->password);
                if (!status_close(so))
                {
                    msg(D_TLS_ERRORS, "TLS Auth Error: could not write username/password to file: %s",
                        tmp_file);
                    goto done;
                }
            }
            else
            {
                msg(D_TLS_ERRORS, "TLS Auth Error: could not create write "
                    "username/password to temp file");
            }
        }
        else
        {
            setenv_str(session->opt->es, "username", up->username);
            setenv_str(session->opt->es, "password", up->password);
        }


        setenv_str(session->opt->es, "common_name", session->common_name);


        setenv_untrusted(session);


        add_session_token_env(session, multi, up);


        argv_parse_cmd(&argv, session->opt->auth_user_pass_verify_script);
        argv_printf_cat(&argv, "%s", tmp_file);


        ret = openvpn_run_script(&argv, session->opt->es, 0,
                                 "--auth-user-pass-verify");

        if (!session->opt->auth_user_pass_verify_script_via_file)
        {
            setenv_del(session->opt->es, "password");
        }
    }
    else
    {
        msg(D_TLS_ERRORS, "TLS Auth Error: peer provided a blank username");
    }

done:
    if (tmp_file && strlen(tmp_file) > 0)
    {
        platform_unlink(tmp_file);
    }

    argv_reset(&argv);
    gc_free(&gc);
    return ret;
}
