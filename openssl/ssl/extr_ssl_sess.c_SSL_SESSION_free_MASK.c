#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  alpn_selected; int /*<<< orphan*/  tick; int /*<<< orphan*/  hostname; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  ticket_appdata; TYPE_1__ ext; int /*<<< orphan*/  srp_username; int /*<<< orphan*/  psk_identity; int /*<<< orphan*/  psk_identity_hint; int /*<<< orphan*/  peer_chain; int /*<<< orphan*/  peer; int /*<<< orphan*/  session_id; int /*<<< orphan*/  master_key; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  references; } ;
typedef  TYPE_2__ SSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_SSL_SESSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 

void FUNC10(SSL_SESSION *ss)
{
    int i;

    if (ss == NULL)
        return;
    FUNC0(&ss->references, &i, ss->lock);
    FUNC7("SSL_SESSION", ss);
    if (i > 0)
        return;
    FUNC6(i < 0);

    FUNC2(CRYPTO_EX_INDEX_SSL_SESSION, ss, &ss->ex_data);

    FUNC3(ss->master_key, sizeof(ss->master_key));
    FUNC3(ss->session_id, sizeof(ss->session_id));
    FUNC8(ss->peer);
    FUNC9(ss->peer_chain, X509_free);
    FUNC5(ss->ext.hostname);
    FUNC5(ss->ext.tick);
#ifndef OPENSSL_NO_PSK
    FUNC5(ss->psk_identity_hint);
    FUNC5(ss->psk_identity);
#endif
#ifndef OPENSSL_NO_SRP
    FUNC5(ss->srp_username);
#endif
    FUNC5(ss->ext.alpn_selected);
    FUNC5(ss->ticket_appdata);
    FUNC1(ss->lock);
    FUNC4(ss, sizeof(*ss));
}