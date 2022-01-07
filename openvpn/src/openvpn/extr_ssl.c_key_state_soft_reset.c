
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_session {TYPE_1__* opt; struct key_state* key; } ;
struct key_state {int remote_addr; int session_id_remote; scalar_t__ must_die; } ;
struct TYPE_2__ {scalar_t__ transition_window; } ;


 size_t KS_LAME_DUCK ;
 size_t KS_PRIMARY ;
 int key_state_free (struct key_state*,int) ;
 int key_state_init (struct tls_session*,struct key_state*) ;
 scalar_t__ now ;

__attribute__((used)) static void
key_state_soft_reset(struct tls_session *session)
{
    struct key_state *ks = &session->key[KS_PRIMARY];
    struct key_state *ks_lame = &session->key[KS_LAME_DUCK];

    ks->must_die = now + session->opt->transition_window;
    key_state_free(ks_lame, 0);
    *ks_lame = *ks;

    key_state_init(session, ks);
    ks->session_id_remote = ks_lame->session_id_remote;
    ks->remote_addr = ks_lame->remote_addr;
}
