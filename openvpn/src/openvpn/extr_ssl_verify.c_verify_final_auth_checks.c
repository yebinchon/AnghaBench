
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_session {char* common_name; TYPE_1__* opt; struct cert_hash_set* cert_hash_set; struct key_state* key; } ;
struct tls_multi {char* locked_cn; scalar_t__ locked_cert_hash_set; } ;
struct key_state {int authenticated; } ;
struct gc_arena {int dummy; } ;
struct cert_hash_set {int dummy; } ;
struct TYPE_2__ {scalar_t__ client_config_dir_exclusive; } ;


 char* CCD_DEFAULT ;
 int D_TLS_ERRORS ;
 size_t KS_PRIMARY ;
 int cert_hash_compare (struct cert_hash_set const*,scalar_t__) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,char*,...) ;
 char* platform_gen_path (scalar_t__,char const*,struct gc_arena*) ;
 int platform_test_file (char const*) ;
 int set_common_name (struct tls_session*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int tls_deauthenticate (struct tls_multi*) ;
 int wipe_auth_token (struct tls_multi*) ;

void
verify_final_auth_checks(struct tls_multi *multi, struct tls_session *session)
{
    struct key_state *ks = &session->key[KS_PRIMARY];


    if (!session->common_name)
    {
        set_common_name(session, "");
    }


    if (ks->authenticated && multi->locked_cn)
    {
        const char *cn = session->common_name;
        if (cn && strcmp(cn, multi->locked_cn))
        {
            msg(D_TLS_ERRORS, "TLS Auth Error: TLS object CN attempted to change from '%s' to '%s' -- tunnel disabled",
                multi->locked_cn,
                cn);


            set_common_name(session, multi->locked_cn);
            tls_deauthenticate(multi);
        }
    }


    if (ks->authenticated && multi->locked_cert_hash_set)
    {
        const struct cert_hash_set *chs = session->cert_hash_set;
        if (chs && !cert_hash_compare(chs, multi->locked_cert_hash_set))
        {
            msg(D_TLS_ERRORS, "TLS Auth Error: TLS object CN=%s client-provided SSL certs unexpectedly changed during mid-session reauth",
                session->common_name);


            tls_deauthenticate(multi);
        }
    }


    if (ks->authenticated && session->opt->client_config_dir_exclusive)
    {
        struct gc_arena gc = gc_new();

        const char *cn = session->common_name;
        const char *path = platform_gen_path(session->opt->client_config_dir_exclusive,
                                             cn, &gc);
        if (!cn || !strcmp(cn, CCD_DEFAULT) || !platform_test_file(path))
        {
            ks->authenticated = 0;
            wipe_auth_token(multi);
            msg(D_TLS_ERRORS, "TLS Auth Error: --client-config-dir authentication failed for common name '%s' file='%s'",
                session->common_name,
                path ? path : "UNDEF");
        }

        gc_free(&gc);
    }
}
