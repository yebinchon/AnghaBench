#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct options {int /*<<< orphan*/ * priv_key_file_inline; int /*<<< orphan*/  prng_nonce_secret_len; int /*<<< orphan*/  prng_hash; int /*<<< orphan*/  keysize; int /*<<< orphan*/  authname; int /*<<< orphan*/  ciphername; } ;
struct TYPE_5__ {int /*<<< orphan*/  key_type; int /*<<< orphan*/  ssl_ctx; } ;
struct TYPE_6__ {TYPE_2__ ks; } ;
struct context {struct options options; TYPE_3__ c1; TYPE_1__* sig; } ;
struct TYPE_4__ {char* signal_text; int /*<<< orphan*/  signal_received; } ;

/* Variables and functions */
#define  AR_INTERACT 130 
#define  AR_NOINTERACT 129 
#define  AR_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D_INIT_MEDIUM ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 
 int /*<<< orphan*/  FUNC3 (struct context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct options const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct context *c)
{
    const struct options *options = &c->options;

    if (!FUNC10(&c->c1.ks.ssl_ctx))
    {
        /*
         * Initialize the OpenSSL library's global
         * SSL context.
         */
        FUNC5(options, &(c->c1.ks.ssl_ctx));
        if (!FUNC10(&c->c1.ks.ssl_ctx))
        {
#if P2MP
            switch (auth_retry_get())
            {
                case AR_NONE:
                    msg(M_FATAL, "Error: private key password verification failed");
                    break;

                case AR_INTERACT:
                    ssl_purge_auth(false);

                case AR_NOINTERACT:
                    c->sig->signal_received = SIGUSR1; /* SOFT-SIGUSR1 -- Password failure error */
                    break;

                default:
                    ASSERT(0);
            }
            c->sig->signal_text = "private-key-password-failure";
            return;
#else  /* if P2MP */
            FUNC6(M_FATAL, "Error: private key password verification failed");
#endif /* if P2MP */
        }

        /* Get cipher & hash algorithms */
        FUNC4(&c->c1.ks.key_type, options->ciphername, options->authname,
                      options->keysize, true, true);

        /* Initialize PRNG with config-specified digest */
        FUNC7(options->prng_hash, options->prng_nonce_secret_len);

        /* initialize tls-auth/crypt/crypt-v2 key */
        FUNC3(c);

#if P2MP_SERVER
        /* initialise auth-token crypto support */
        do_init_auth_token_key(c);
#endif

#if 0 /* was: #if ENABLE_INLINE_FILES --  Note that enabling this code will break restarts */
        if (options->priv_key_file_inline)
        {
            string_clear(c->options.priv_key_file_inline);
            c->options.priv_key_file_inline = NULL;
        }
#endif
    }
    else
    {
        FUNC6(D_INIT_MEDIUM, "Re-using SSL/TLS context");

        /*
         * tls-auth/crypt key can be configured per connection block, therefore
         * we must reload it as it may have changed
         */
        FUNC3(c);
    }
}