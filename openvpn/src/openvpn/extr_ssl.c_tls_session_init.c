
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int packet_id; int pid_persist; } ;
struct TYPE_6__ {TYPE_2__ opt; int work; } ;
struct tls_session {int session_id; int * key; TYPE_3__ tls_wrap; int key_id; TYPE_1__* opt; int initial_opcode; } ;
struct TYPE_4__ {int key_method; int replay_time; int replay_window; int frame; TYPE_3__ tls_wrap; scalar_t__ tls_crypt_v2; scalar_t__ server; } ;
struct tls_multi {TYPE_1__ opt; } ;
struct gc_arena {int dummy; } ;


 int ASSERT (int) ;
 int BUF_SIZE (int *) ;
 int CLEAR (struct tls_session) ;
 int D_TLS_DEBUG ;
 size_t KS_PRIMARY ;
 int P_CONTROL_HARD_RESET_CLIENT_V1 ;
 int P_CONTROL_HARD_RESET_CLIENT_V2 ;
 int P_CONTROL_HARD_RESET_CLIENT_V3 ;
 int P_CONTROL_HARD_RESET_SERVER_V1 ;
 int P_CONTROL_HARD_RESET_SERVER_V2 ;
 int alloc_buf (int ) ;
 int dmsg (int ,char*,...) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int key_state_init (struct tls_session*,int *) ;
 int packet_id_init (int *,int ,int ,char*,int ) ;
 int packet_id_persist_load_obj (int ,int *) ;
 int session_id_defined (int *) ;
 int session_id_print (int *,struct gc_arena*) ;
 int session_id_random (int *) ;

__attribute__((used)) static void
tls_session_init(struct tls_multi *multi, struct tls_session *session)
{
    struct gc_arena gc = gc_new();

    dmsg(D_TLS_DEBUG, "TLS: tls_session_init: entry");

    CLEAR(*session);


    session->opt = &multi->opt;


    while (!session_id_defined(&session->session_id))
    {
        session_id_random(&session->session_id);
    }


    ASSERT(session->opt->key_method >= 1);
    if (session->opt->key_method == 1)
    {
        session->initial_opcode = session->opt->server ?
                                  P_CONTROL_HARD_RESET_SERVER_V1 : P_CONTROL_HARD_RESET_CLIENT_V1;
    }
    else
    {
        if (session->opt->server)
        {
            session->initial_opcode = P_CONTROL_HARD_RESET_SERVER_V2;
        }
        else
        {
            session->initial_opcode = session->opt->tls_crypt_v2 ?
                                      P_CONTROL_HARD_RESET_CLIENT_V3 : P_CONTROL_HARD_RESET_CLIENT_V2;
        }
    }


    session->tls_wrap = session->opt->tls_wrap;
    session->tls_wrap.work = alloc_buf(BUF_SIZE(&session->opt->frame));


    packet_id_init(&session->tls_wrap.opt.packet_id,
                   session->opt->replay_window,
                   session->opt->replay_time,
                   "TLS_WRAP", session->key_id);


    packet_id_persist_load_obj(session->tls_wrap.opt.pid_persist,
                               &session->tls_wrap.opt.packet_id);

    key_state_init(session, &session->key[KS_PRIMARY]);

    dmsg(D_TLS_DEBUG, "TLS: tls_session_init: new session object, sid=%s",
         session_id_print(&session->session_id, &gc));

    gc_free(&gc);
}
