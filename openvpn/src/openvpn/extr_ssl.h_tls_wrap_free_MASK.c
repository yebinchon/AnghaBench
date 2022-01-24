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
struct TYPE_2__ {int /*<<< orphan*/  key_ctx_bi; int /*<<< orphan*/  packet_id; } ;
struct tls_wrap_ctx {int /*<<< orphan*/  work; int /*<<< orphan*/  tls_crypt_v2_metadata; TYPE_1__ opt; scalar_t__ cleanup_key_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct tls_wrap_ctx *tls_wrap)
{
    if (FUNC3(&tls_wrap->opt.packet_id))
    {
        FUNC2(&tls_wrap->opt.packet_id);
    }

    if (tls_wrap->cleanup_key_ctx)
    {
        FUNC1(&tls_wrap->opt.key_ctx_bi);
    }

    FUNC0(&tls_wrap->tls_crypt_v2_metadata);
    FUNC0(&tls_wrap->work);
}