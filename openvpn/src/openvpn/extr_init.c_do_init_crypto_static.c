
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct options {scalar_t__ replay; int key_direction; int shared_secret_file_inline; int shared_secret_file; int test_crypto; int keysize; int authname; int ciphername; int replay_time; int replay_window; scalar_t__ mute_replay_warnings; } ;
struct TYPE_7__ {int key_type; int static_key; } ;
struct TYPE_8__ {TYPE_3__ ks; int pid_persist; } ;
struct TYPE_5__ {int key_ctx_bi; int packet_id; int flags; int * pid_persist; } ;
struct TYPE_6__ {int frame; TYPE_1__ crypto_options; } ;
struct context {TYPE_4__ c1; TYPE_2__ c2; struct options options; } ;


 int ASSERT (int ) ;
 int CO_MUTE_REPLAY_WARNINGS ;
 int CO_PACKET_ID_LONG_FORM ;
 int M_INFO ;
 int check_replay_consistency (int *,scalar_t__) ;
 int crypto_adjust_frame_parameters (int *,int *,scalar_t__,int) ;
 int crypto_read_openvpn_key (int *,int *,int ,int ,int ,char*,char*) ;
 int init_crypto_pre (struct context*,unsigned int const) ;
 int init_key_type (int *,int ,int ,int ,int ,int) ;
 int key_ctx_bi_defined (int *) ;
 int msg (int ,char*) ;
 int packet_id_init (int *,int ,int ,char*,int ) ;
 int packet_id_persist_load_obj (int *,int *) ;

__attribute__((used)) static void
do_init_crypto_static(struct context *c, const unsigned int flags)
{
    const struct options *options = &c->options;
    ASSERT(options->shared_secret_file);

    init_crypto_pre(c, flags);


    if (c->options.mute_replay_warnings)
    {
        c->c2.crypto_options.flags |= CO_MUTE_REPLAY_WARNINGS;
    }


    if (options->replay)
    {
        packet_id_init(&c->c2.crypto_options.packet_id,
                       options->replay_window,
                       options->replay_time,
                       "STATIC", 0);
        c->c2.crypto_options.pid_persist = &c->c1.pid_persist;
        c->c2.crypto_options.flags |= CO_PACKET_ID_LONG_FORM;
        packet_id_persist_load_obj(&c->c1.pid_persist,
                                   &c->c2.crypto_options.packet_id);
    }

    if (!key_ctx_bi_defined(&c->c1.ks.static_key))
    {

        init_key_type(&c->c1.ks.key_type, options->ciphername, options->authname,
                      options->keysize, options->test_crypto, 1);


        crypto_read_openvpn_key(&c->c1.ks.key_type, &c->c1.ks.static_key,
                                options->shared_secret_file,
                                options->shared_secret_file_inline,
                                options->key_direction, "Static Key Encryption",
                                "secret");
    }
    else
    {
        msg(M_INFO, "Re-using pre-shared static key");
    }


    c->c2.crypto_options.key_ctx_bi = c->c1.ks.static_key;


    crypto_adjust_frame_parameters(&c->c2.frame, &c->c1.ks.key_type,
                                   options->replay, 1);


    check_replay_consistency(&c->c1.ks.key_type, options->replay);
}
