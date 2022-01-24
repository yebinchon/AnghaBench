#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  packet_id; int /*<<< orphan*/  key_ctx_bi; } ;
struct key_state {TYPE_1__ crypto_options; scalar_t__ key_src; scalar_t__ rec_ack; scalar_t__ rec_reliable; scalar_t__ send_reliable; int /*<<< orphan*/  paybuf; int /*<<< orphan*/  ack_write_buf; int /*<<< orphan*/  plaintext_write_buf; int /*<<< orphan*/  plaintext_read_buf; int /*<<< orphan*/  ks_ssl; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct key_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct key_state*,int) ; 

__attribute__((used)) static void
FUNC9(struct key_state *ks, bool clear)
{
    ks->state = S_UNDEF;

    FUNC5(&ks->ks_ssl);

    FUNC3(&ks->crypto_options.key_ctx_bi);
    FUNC2(&ks->plaintext_read_buf);
    FUNC2(&ks->plaintext_write_buf);
    FUNC2(&ks->ack_write_buf);
    FUNC0(ks->paybuf);

    if (ks->send_reliable)
    {
        FUNC7(ks->send_reliable);
        FUNC1(ks->send_reliable);
    }

    if (ks->rec_reliable)
    {
        FUNC7(ks->rec_reliable);
        FUNC1(ks->rec_reliable);
    }

    if (ks->rec_ack)
    {
        FUNC1(ks->rec_ack);
    }

    if (ks->key_src)
    {
        FUNC1(ks->key_src);
    }

    FUNC6(&ks->crypto_options.packet_id);

#ifdef PLUGIN_DEF_AUTH
    key_state_rm_auth_control_file(ks);
#endif

    if (clear)
    {
        FUNC8(ks, sizeof(*ks));
    }
}