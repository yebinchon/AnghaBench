
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct options {int * priv_key_file_inline; int prng_nonce_secret_len; int prng_hash; int keysize; int authname; int ciphername; } ;
struct TYPE_5__ {int key_type; int ssl_ctx; } ;
struct TYPE_6__ {TYPE_2__ ks; } ;
struct context {struct options options; TYPE_3__ c1; TYPE_1__* sig; } ;
struct TYPE_4__ {char* signal_text; int signal_received; } ;





 int ASSERT (int ) ;
 int D_INIT_MEDIUM ;
 int M_FATAL ;
 int SIGUSR1 ;
 int auth_retry_get () ;
 int do_init_auth_token_key (struct context*) ;
 int do_init_tls_wrap_key (struct context*) ;
 int init_key_type (int *,int ,int ,int ,int,int) ;
 int init_ssl (struct options const*,int *) ;
 int msg (int ,char*) ;
 int prng_init (int ,int ) ;
 int ssl_purge_auth (int) ;
 int string_clear (int *) ;
 int tls_ctx_initialised (int *) ;

__attribute__((used)) static void
do_init_crypto_tls_c1(struct context *c)
{
    const struct options *options = &c->options;

    if (!tls_ctx_initialised(&c->c1.ks.ssl_ctx))
    {




        init_ssl(options, &(c->c1.ks.ssl_ctx));
        if (!tls_ctx_initialised(&c->c1.ks.ssl_ctx))
        {
            msg(M_FATAL, "Error: private key password verification failed");

        }


        init_key_type(&c->c1.ks.key_type, options->ciphername, options->authname,
                      options->keysize, 1, 1);


        prng_init(options->prng_hash, options->prng_nonce_secret_len);


        do_init_tls_wrap_key(c);
    }
    else
    {
        msg(D_INIT_MEDIUM, "Re-using SSL/TLS context");





        do_init_tls_wrap_key(c);
    }
}
