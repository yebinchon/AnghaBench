#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tls_crypt_v2_inline; scalar_t__ tls_crypt_v2_file; int /*<<< orphan*/  tls_crypt_inline; scalar_t__ tls_crypt_file; int /*<<< orphan*/  key_direction; int /*<<< orphan*/  tls_auth_file_inline; scalar_t__ tls_auth_file; } ;
struct options {TYPE_3__ ce; scalar_t__ tls_server; int /*<<< orphan*/  authname; } ;
struct TYPE_9__ {int /*<<< orphan*/  digest; int /*<<< orphan*/  hmac_length; } ;
struct TYPE_6__ {int /*<<< orphan*/  tls_crypt_v2_wkc; int /*<<< orphan*/  tls_wrap_key; int /*<<< orphan*/  tls_crypt_v2_server_key; TYPE_4__ tls_auth_key_type; } ;
struct TYPE_7__ {TYPE_1__ ks; } ;
struct context {TYPE_2__ c1; struct options options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__) ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct context *c)
{
    const struct options *options = &c->options;

    /* TLS handshake authentication (--tls-auth) */
    if (options->ce.tls_auth_file)
    {
        /* Initialize key_type for tls-auth with auth only */
        FUNC0(c->c1.ks.tls_auth_key_type);
        if (!FUNC5(options->authname, "none"))
        {
            c->c1.ks.tls_auth_key_type.digest = FUNC2(options->authname);
            c->c1.ks.tls_auth_key_type.hmac_length =
                FUNC3(c->c1.ks.tls_auth_key_type.digest);
        }
        else
        {
            FUNC4(M_FATAL, "ERROR: tls-auth enabled, but no valid --auth "
                "algorithm specified ('%s')", options->authname);
        }

        FUNC1(&c->c1.ks.tls_auth_key_type,
                                &c->c1.ks.tls_wrap_key,
                                options->ce.tls_auth_file,
                                options->ce.tls_auth_file_inline,
                                options->ce.key_direction,
                                "Control Channel Authentication", "tls-auth");
    }

    /* TLS handshake encryption+authentication (--tls-crypt) */
    if (options->ce.tls_crypt_file)
    {
        FUNC6(&c->c1.ks.tls_wrap_key,
                           options->ce.tls_crypt_file,
                           options->ce.tls_crypt_inline, options->tls_server);
    }

    /* tls-crypt with client-specific keys (--tls-crypt-v2) */
    if (options->ce.tls_crypt_v2_file)
    {
        if (options->tls_server)
        {
            FUNC8(&c->c1.ks.tls_crypt_v2_server_key,
                                         true, options->ce.tls_crypt_v2_file,
                                         options->ce.tls_crypt_v2_inline);
        }
        else
        {
            FUNC7(&c->c1.ks.tls_wrap_key,
                                         &c->c1.ks.tls_crypt_v2_wkc,
                                         options->ce.tls_crypt_v2_file,
                                         options->ce.tls_crypt_v2_inline);
        }
    }


}