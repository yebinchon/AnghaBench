#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* cert; } ;
struct TYPE_4__ {int /*<<< orphan*/ * psk_identity_hint; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 scalar_t__ PSK_MAX_IDENTITY_LEN ; 
 int /*<<< orphan*/  SSL_F_SSL_USE_PSK_IDENTITY_HINT ; 
 int /*<<< orphan*/  SSL_R_DATA_LENGTH_TOO_LONG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 

int FUNC4(SSL *s, const char *identity_hint)
{
    if (s == NULL)
        return 0;

    if (identity_hint != NULL && FUNC3(identity_hint) > PSK_MAX_IDENTITY_LEN) {
        FUNC2(SSL_F_SSL_USE_PSK_IDENTITY_HINT, SSL_R_DATA_LENGTH_TOO_LONG);
        return 0;
    }
    FUNC0(s->cert->psk_identity_hint);
    if (identity_hint != NULL) {
        s->cert->psk_identity_hint = FUNC1(identity_hint);
        if (s->cert->psk_identity_hint == NULL)
            return 0;
    } else
        s->cert->psk_identity_hint = NULL;
    return 1;
}