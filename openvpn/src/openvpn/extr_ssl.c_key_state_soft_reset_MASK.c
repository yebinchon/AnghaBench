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
struct tls_session {TYPE_1__* opt; struct key_state* key; } ;
struct key_state {int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  session_id_remote; scalar_t__ must_die; } ;
struct TYPE_2__ {scalar_t__ transition_window; } ;

/* Variables and functions */
 size_t KS_LAME_DUCK ; 
 size_t KS_PRIMARY ; 
 int /*<<< orphan*/  FUNC0 (struct key_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tls_session*,struct key_state*) ; 
 scalar_t__ now ; 

__attribute__((used)) static void
FUNC2(struct tls_session *session)
{
    struct key_state *ks = &session->key[KS_PRIMARY];      /* primary key */
    struct key_state *ks_lame = &session->key[KS_LAME_DUCK]; /* retiring key */

    ks->must_die = now + session->opt->transition_window; /* remaining lifetime of old key */
    FUNC0(ks_lame, false);
    *ks_lame = *ks;

    FUNC1(session, ks);
    ks->session_id_remote = ks_lame->session_id_remote;
    ks->remote_addr = ks_lame->remote_addr;
}