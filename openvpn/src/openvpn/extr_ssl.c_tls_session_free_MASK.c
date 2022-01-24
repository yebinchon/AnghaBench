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
struct tls_session {int /*<<< orphan*/  cert_hash_set; scalar_t__ common_name; int /*<<< orphan*/ * key; int /*<<< orphan*/  tls_wrap; } ;

/* Variables and functions */
 size_t KS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tls_session*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct tls_session *session, bool clear)
{
    FUNC4(&session->tls_wrap);

    for (size_t i = 0; i < KS_SIZE; ++i)
    {
        FUNC2(&session->key[i], false);
    }

    if (session->common_name)
    {
        FUNC1(session->common_name);
    }

    FUNC0(session->cert_hash_set);

    if (clear)
    {
        FUNC3(session, sizeof(*session));
    }
}