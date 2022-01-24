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
struct key_schedule {int /*<<< orphan*/  tls_crypt_v2_server_key; int /*<<< orphan*/  ssl_ctx; int /*<<< orphan*/  static_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_schedule) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct key_schedule *ks, bool free_ssl_ctx)
{
    FUNC2(&ks->static_key);
    if (FUNC4(&ks->ssl_ctx) && free_ssl_ctx)
    {
        FUNC3(&ks->ssl_ctx);
        FUNC1(&ks->tls_crypt_v2_server_key);
    }
    FUNC0(*ks);
}