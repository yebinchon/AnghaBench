
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tls_session {struct key_state* key; int session_id; } ;
struct TYPE_5__ {int gremlin; int single_session; } ;
struct link_socket_actual {int dummy; } ;
struct tls_multi {int n_soft_errors; int n_hard_errors; TYPE_3__** key_scan; TYPE_2__ opt; struct tls_session* session; struct link_socket_actual to_link_addr; } ;
struct link_socket_info {TYPE_1__* lsa; } ;
struct key_state {scalar_t__ state; int remote_addr; int session_id_remote; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef int interval_t ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_4__ {int actual; } ;


 scalar_t__ DECRYPT_KEY_ENABLED (struct tls_multi*,struct key_state*) ;
 int D_TLS_DEBUG ;
 int D_TLS_DEBUG_LOW ;
 int GREMLIN_CONNECTION_FLOOD_LEVEL (int ) ;
 size_t KS_LAME_DUCK ;
 size_t KS_PRIMARY ;
 int PERF_TLS_MULTI_PROCESS ;
 scalar_t__ SIZE (TYPE_3__**) ;
 scalar_t__ S_ACTIVE ;
 scalar_t__ S_ERROR ;
 scalar_t__ S_INITIAL ;
 int TLSMP_ACTIVE ;
 int TLSMP_INACTIVE ;
 int TLSMP_KILL ;
 int TLS_AUTHENTICATION_FAILED ;
 int TLS_AUTHENTICATION_SUCCEEDED ;
 int TLS_MULTI_AUTH_STATUS_INTERVAL ;
 int TM_ACTIVE ;
 size_t TM_LAME_DUCK ;
 int TM_SIZE ;
 size_t TM_UNTRUSTED ;
 int dmsg (int ,char*,int,int ,int ,int ,int ) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 scalar_t__ lame_duck_must_die (struct tls_session*,int *) ;
 scalar_t__ link_socket_actual_defined (int *) ;
 int move_session (struct tls_multi*,int,size_t,int) ;
 int msg (int ,char*,...) ;
 int perf_pop () ;
 int perf_push (int ) ;
 int print_link_socket_actual (int *,struct gc_arena*) ;
 int reset_session (struct tls_multi*,struct tls_session*) ;
 int session_id_print (int *,struct gc_arena*) ;
 int state_name (scalar_t__) ;
 int tls_authentication_status (struct tls_multi*,int ) ;
 int tls_clear_error () ;
 scalar_t__ tls_process (struct tls_multi*,struct tls_session*,struct buffer*,struct link_socket_actual**,struct link_socket_info*,int *) ;
 int tls_session_free (struct tls_session*,int) ;
 int update_time () ;

int
tls_multi_process(struct tls_multi *multi,
                  struct buffer *to_link,
                  struct link_socket_actual **to_link_addr,
                  struct link_socket_info *to_link_socket_info,
                  interval_t *wakeup)
{
    struct gc_arena gc = gc_new();
    int i;
    int active = TLSMP_INACTIVE;
    bool error = 0;
    int tas;

    perf_push(PERF_TLS_MULTI_PROCESS);

    tls_clear_error();






    for (i = 0; i < TM_SIZE; ++i)
    {
        struct tls_session *session = &multi->session[i];
        struct key_state *ks = &session->key[KS_PRIMARY];
        struct key_state *ks_lame = &session->key[KS_LAME_DUCK];


        if (i == TM_ACTIVE && ks->state == S_INITIAL
            && link_socket_actual_defined(&to_link_socket_info->lsa->actual))
        {
            ks->remote_addr = to_link_socket_info->lsa->actual;
        }

        dmsg(D_TLS_DEBUG,
             "TLS: tls_multi_process: i=%d state=%s, mysid=%s, stored-sid=%s, stored-ip=%s",
             i,
             state_name(ks->state),
             session_id_print(&session->session_id, &gc),
             session_id_print(&ks->session_id_remote, &gc),
             print_link_socket_actual(&ks->remote_addr, &gc));

        if (ks->state >= S_INITIAL && link_socket_actual_defined(&ks->remote_addr))
        {
            struct link_socket_actual *tla = ((void*)0);

            update_time();

            if (tls_process(multi, session, to_link, &tla,
                            to_link_socket_info, wakeup))
            {
                active = TLSMP_ACTIVE;
            }






            if (tla)
            {
                multi->to_link_addr = *tla;
                *to_link_addr = &multi->to_link_addr;
            }







            if (ks->state == S_ERROR)
            {
                ++multi->n_soft_errors;

                if (i == TM_ACTIVE)
                {
                    error = 1;
                }

                if (i == TM_ACTIVE
                    && ks_lame->state >= S_ACTIVE
                    && !multi->opt.single_session)
                {
                    move_session(multi, TM_LAME_DUCK, TM_ACTIVE, 1);
                }
                else
                {
                    reset_session(multi, session);
                }
            }
        }
    }

    update_time();

    tas = tls_authentication_status(multi, TLS_MULTI_AUTH_STATUS_INTERVAL);




    if (lame_duck_must_die(&multi->session[TM_LAME_DUCK], wakeup))
    {
        tls_session_free(&multi->session[TM_LAME_DUCK], 1);
        msg(D_TLS_DEBUG_LOW, "TLS: tls_multi_process: killed expiring key");
    }
    if (DECRYPT_KEY_ENABLED(multi, &multi->session[TM_UNTRUSTED].key[KS_PRIMARY]))
    {
        move_session(multi, TM_ACTIVE, TM_UNTRUSTED, 1);
        msg(D_TLS_DEBUG_LOW, "TLS: tls_multi_process: untrusted session promoted to %strusted",
            tas == TLS_AUTHENTICATION_SUCCEEDED ? "" : "semi-");
    }





    if (error)
    {
        for (i = 0; i < (int) SIZE(multi->key_scan); ++i)
        {
            if (multi->key_scan[i]->state >= S_ACTIVE)
            {
                goto nohard;
            }
        }
        ++multi->n_hard_errors;
    }
nohard:
    perf_pop();
    gc_free(&gc);

    return (tas == TLS_AUTHENTICATION_FAILED) ? TLSMP_KILL : active;
}
