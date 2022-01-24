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
struct tls_multi {int /*<<< orphan*/ * session; struct tls_multi* remote_ciphername; int /*<<< orphan*/  locked_cert_hash_set; struct tls_multi* locked_username; struct tls_multi* locked_cn; struct tls_multi* peer_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tls_multi*) ; 
 int TM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct tls_multi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tls_multi*) ; 
 int /*<<< orphan*/  FUNC4 (struct tls_multi*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tls_multi*) ; 

void
FUNC7(struct tls_multi *multi, bool clear)
{
    int i;

    FUNC0(multi);

#if P2MP_SERVER
    auth_set_client_reason(multi, NULL);

    free(multi->peer_info);
#endif

    if (multi->locked_cn)
    {
        FUNC3(multi->locked_cn);
    }

    if (multi->locked_username)
    {
        FUNC3(multi->locked_username);
    }

    FUNC2(multi->locked_cert_hash_set);

    FUNC6(multi);

    FUNC3(multi->remote_ciphername);

    for (i = 0; i < TM_SIZE; ++i)
    {
        FUNC5(&multi->session[i], false);
    }

    if (clear)
    {
        FUNC4(multi, sizeof(*multi));
    }

    FUNC3(multi);
}