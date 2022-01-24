#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct options {scalar_t__ replay; int /*<<< orphan*/  key_direction; int /*<<< orphan*/  shared_secret_file_inline; int /*<<< orphan*/  shared_secret_file; int /*<<< orphan*/  test_crypto; int /*<<< orphan*/  keysize; int /*<<< orphan*/  authname; int /*<<< orphan*/  ciphername; int /*<<< orphan*/  replay_time; int /*<<< orphan*/  replay_window; scalar_t__ mute_replay_warnings; } ;
struct TYPE_7__ {int /*<<< orphan*/  key_type; int /*<<< orphan*/  static_key; } ;
struct TYPE_8__ {TYPE_3__ ks; int /*<<< orphan*/  pid_persist; } ;
struct TYPE_5__ {int /*<<< orphan*/  key_ctx_bi; int /*<<< orphan*/  packet_id; int /*<<< orphan*/  flags; int /*<<< orphan*/ * pid_persist; } ;
struct TYPE_6__ {int /*<<< orphan*/  frame; TYPE_1__ crypto_options; } ;
struct context {TYPE_4__ c1; TYPE_2__ c2; struct options options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CO_MUTE_REPLAY_WARNINGS ; 
 int /*<<< orphan*/  CO_PACKET_ID_LONG_FORM ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct context*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct context *c, const unsigned int flags)
{
    const struct options *options = &c->options;
    FUNC0(options->shared_secret_file);

    FUNC4(c, flags);

    /* Initialize flags */
    if (c->options.mute_replay_warnings)
    {
        c->c2.crypto_options.flags |= CO_MUTE_REPLAY_WARNINGS;
    }

    /* Initialize packet ID tracking */
    if (options->replay)
    {
        FUNC8(&c->c2.crypto_options.packet_id,
                       options->replay_window,
                       options->replay_time,
                       "STATIC", 0);
        c->c2.crypto_options.pid_persist = &c->c1.pid_persist;
        c->c2.crypto_options.flags |= CO_PACKET_ID_LONG_FORM;
        FUNC9(&c->c1.pid_persist,
                                   &c->c2.crypto_options.packet_id);
    }

    if (!FUNC6(&c->c1.ks.static_key))
    {
        /* Get cipher & hash algorithms */
        FUNC5(&c->c1.ks.key_type, options->ciphername, options->authname,
                      options->keysize, options->test_crypto, true);

        /* Read cipher and hmac keys from shared secret file */
        FUNC3(&c->c1.ks.key_type, &c->c1.ks.static_key,
                                options->shared_secret_file,
                                options->shared_secret_file_inline,
                                options->key_direction, "Static Key Encryption",
                                "secret");
    }
    else
    {
        FUNC7(M_INFO, "Re-using pre-shared static key");
    }

    /* Get key schedule */
    c->c2.crypto_options.key_ctx_bi = c->c1.ks.static_key;

    /* Compute MTU parameters */
    FUNC2(&c->c2.frame, &c->c1.ks.key_type,
                                   options->replay, true);

    /* Sanity check on sequence number, and cipher mode options */
    FUNC1(&c->c1.ks.key_type, options->replay);
}