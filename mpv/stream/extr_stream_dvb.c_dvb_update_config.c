
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ priv; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {int switching_channel; } ;
typedef TYPE_2__ dvb_state_t ;
struct TYPE_10__ {int prog; TYPE_2__* state; int opts_cache; } ;
typedef TYPE_3__ dvb_priv_t ;


 int MP_ERR (TYPE_1__*,char*) ;
 int dvb_parse_path (TYPE_1__*) ;
 int dvb_streaming_start (TYPE_1__*,int ) ;
 scalar_t__ m_config_cache_update (int ) ;
 int mp_time_sec () ;

void dvb_update_config(stream_t *stream)
{
    static int last_check = 0;
    int now = (int)(mp_time_sec()*10);


    if (now != last_check) {
        last_check = now;
        dvb_priv_t *priv = (dvb_priv_t *) stream->priv;
        if (m_config_cache_update(priv->opts_cache)) {
            dvb_state_t *state = priv->state;



            if (!dvb_parse_path(stream)) {
                MP_ERR(stream, "error parsing DVB config, not tuning.");
                return;
            }

            int r = dvb_streaming_start(stream, priv->prog);
            if (r) {


                state->switching_channel = 1;
            }
        }
    }
}
