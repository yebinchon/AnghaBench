
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_pass {int username; int password; } ;
struct tls_session {TYPE_1__* opt; struct key_state* key; } ;
struct tls_multi {int auth_token_state_flags; scalar_t__ auth_token_initial; scalar_t__ auth_token; } ;
struct key_state {int authenticated; int auth_deferred; } ;
struct TYPE_2__ {int ssl_flags; scalar_t__ auth_token_generate; scalar_t__ auth_user_pass_verify_script; int plugins; scalar_t__ auth_token_call_auth; } ;


 int AUTH_TOKEN_EXPIRED ;
 int AUTH_TOKEN_HMAC_OK ;
 int CC_CRLF ;
 int CC_PRINT ;
 int D_HANDSHAKE ;
 int D_TLS_ERRORS ;
 int KMDA_DEF ;
 int KMDA_ERROR ;
 int KMDA_UNDEF ;
 size_t KS_PRIMARY ;
 int M_WARN ;
 int OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY ;
 int OPENVPN_PLUGIN_FUNC_DEFERRED ;
 int OPENVPN_PLUGIN_FUNC_ERROR ;
 int OPENVPN_PLUGIN_FUNC_SUCCESS ;
 int SSLF_USERNAME_AS_COMMON_NAME ;
 scalar_t__ TLS_USERNAME_LEN ;
 int generate_auth_token (struct user_pass*,struct tls_multi*) ;
 scalar_t__ is_auth_token (int ) ;
 int management ;
 scalar_t__ management_enable_def_auth (int ) ;
 int msg (int ,char*,...) ;
 scalar_t__ plugin_defined (int ,int ) ;
 int send_push_reply_auth_token (struct tls_multi*) ;
 int set_common_name (struct tls_session*,int ) ;
 scalar_t__ strdup (int ) ;
 int string_mod (int ,int ,int ,char) ;
 int string_mod_remap_name (int ) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ tls_lock_username (struct tls_multi*,int ) ;
 int verify_auth_token (struct user_pass*,struct tls_multi*,struct tls_session*) ;
 int verify_user_pass_management (struct tls_session*,struct tls_multi*,struct user_pass*) ;
 int verify_user_pass_plugin (struct tls_session*,struct tls_multi*,struct user_pass*) ;
 int verify_user_pass_script (struct tls_session*,struct tls_multi*,struct user_pass*) ;
 int wipe_auth_token (struct tls_multi*) ;

void
verify_user_pass(struct user_pass *up, struct tls_multi *multi,
                 struct tls_session *session)
{
    int s1 = OPENVPN_PLUGIN_FUNC_SUCCESS;
    bool s2 = 1;
    struct key_state *ks = &session->key[KS_PRIMARY];
    string_mod_remap_name(up->username);
    string_mod(up->password, CC_PRINT, CC_CRLF, '_');





    bool skip_auth = 0;







    if (session->opt->auth_token_generate && is_auth_token(up->password))
    {
        multi->auth_token_state_flags = verify_auth_token(up, multi, session);
        if (session->opt->auth_token_call_auth)
        {





        }
        else if (multi->auth_token_state_flags == AUTH_TOKEN_HMAC_OK)
        {




            msg(M_WARN, "TLS: Username/auth-token authentication "
                        "succeeded for username '%s'",
                up->username);
              skip_auth = 1;
        }
        else
        {
            wipe_auth_token(multi);
            ks->authenticated = 0;
            msg(M_WARN, "TLS: Username/auth-token authentication "
                        "failed for username '%s'", up->username);
            return;
        }
    }

    if (!skip_auth)
    {






        if (plugin_defined(session->opt->plugins, OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY))
        {
            s1 = verify_user_pass_plugin(session, multi, up);
        }

        if (session->opt->auth_user_pass_verify_script)
        {
            s2 = verify_user_pass_script(session, multi, up);
        }
    }


    if ((session->opt->ssl_flags & SSLF_USERNAME_AS_COMMON_NAME) &&
         strlen(up->username)>TLS_USERNAME_LEN)
    {
        msg(D_TLS_ERRORS,
                "TLS Auth Error: --username-as-common name specified and username is longer than the maximum permitted Common Name length of %d characters",
                TLS_USERNAME_LEN);
        s1 = OPENVPN_PLUGIN_FUNC_ERROR;
    }

    if ((s1 == OPENVPN_PLUGIN_FUNC_SUCCESS



         ) && s2



        && tls_lock_username(multi, up->username))
    {
        ks->authenticated = 1;
        if ((session->opt->ssl_flags & SSLF_USERNAME_AS_COMMON_NAME))
        {
            set_common_name(session, up->username);
        }
        msg(D_HANDSHAKE, "TLS: Username/Password authentication %s for username '%s' %s",
            "succeeded",
            up->username,
            (session->opt->ssl_flags & SSLF_USERNAME_AS_COMMON_NAME) ? "[CN SET]" : "");

    }
    else
    {
        msg(D_TLS_ERRORS, "TLS Auth Error: Auth Username/Password verification failed for peer");
    }
}
