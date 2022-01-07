
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ use_prediction_resistance; scalar_t__ packet_id_file; scalar_t__ engine; } ;
struct TYPE_3__ {int pid_persist; } ;
struct context {TYPE_2__ options; TYPE_1__ c1; } ;


 unsigned int const CF_LOAD_PERSISTED_PACKET_ID ;
 int crypto_init_lib_engine (scalar_t__) ;
 int packet_id_persist_load (int *,scalar_t__) ;
 int rand_ctx_enable_prediction_resistance () ;

__attribute__((used)) static void
init_crypto_pre(struct context *c, const unsigned int flags)
{
    if (c->options.engine)
    {
        crypto_init_lib_engine(c->options.engine);
    }

    if (flags & CF_LOAD_PERSISTED_PACKET_ID)
    {

        if (c->options.packet_id_file)
        {
            packet_id_persist_load(&c->c1.pid_persist, c->options.packet_id_file);
        }
    }







}
