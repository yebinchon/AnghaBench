
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct options {int test_crypto; } ;
struct TYPE_6__ {int packet_id; } ;
struct TYPE_5__ {TYPE_3__ crypto_options; int frame; } ;
struct TYPE_4__ {int ks; } ;
struct context {TYPE_2__ c2; TYPE_1__ c1; struct options options; } ;


 int ASSERT (int ) ;
 int IVM_LEVEL_1 ;
 int context_gc_free (struct context*) ;
 int context_init_1 (struct context*) ;
 int do_init_crypto_static (struct context*,int ) ;
 int frame_finalize_options (struct context*,struct options const*) ;
 int init_verb_mute (struct context*,int ) ;
 int key_schedule_free (int *,int) ;
 int next_connection_entry (struct context*) ;
 int packet_id_free (int *) ;
 int test_crypto (TYPE_3__*,int *) ;

__attribute__((used)) static void *
test_crypto_thread(void *arg)
{
    struct context *c = (struct context *) arg;
    const struct options *options = &c->options;

    ASSERT(options->test_crypto);
    init_verb_mute(c, IVM_LEVEL_1);
    context_init_1(c);
    next_connection_entry(c);
    do_init_crypto_static(c, 0);

    frame_finalize_options(c, options);

    test_crypto(&c->c2.crypto_options, &c->c2.frame);

    key_schedule_free(&c->c1.ks, 1);
    packet_id_free(&c->c2.crypto_options.packet_id);

    context_gc_free(c);
    return ((void*)0);
}
