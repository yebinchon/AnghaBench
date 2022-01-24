#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct key_type {int dummy; } ;
struct key_direction_state {size_t out_key; size_t in_key; } ;
struct key_ctx_bi {int initialized; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; } ;
struct key2 {int /*<<< orphan*/ * keys; } ;
typedef  int /*<<< orphan*/  log_prefix ;

/* Variables and functions */
 int /*<<< orphan*/  OPENVPN_OP_DECRYPT ; 
 int /*<<< orphan*/  OPENVPN_OP_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct key_type const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct key_direction_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 

void
FUNC3(struct key_ctx_bi *ctx, const struct key2 *key2,
                int key_direction, const struct key_type *kt, const char *name)
{
    char log_prefix[128] = { 0 };
    struct key_direction_state kds;

    FUNC1(&kds, key_direction);

    FUNC2(log_prefix, sizeof(log_prefix), "Outgoing %s", name);
    FUNC0(&ctx->encrypt, &key2->keys[kds.out_key], kt,
                 OPENVPN_OP_ENCRYPT, log_prefix);

    FUNC2(log_prefix, sizeof(log_prefix), "Incoming %s", name);
    FUNC0(&ctx->decrypt, &key2->keys[kds.in_key], kt,
                 OPENVPN_OP_DECRYPT, log_prefix);

    ctx->initialized = true;
}