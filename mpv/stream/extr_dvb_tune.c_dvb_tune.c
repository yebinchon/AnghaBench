
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int fe_transmit_mode_t ;
typedef int fe_spectral_inversion_t ;
typedef int fe_modulation_t ;
typedef int fe_hierarchy_t ;
typedef int fe_guard_interval_t ;
typedef int fe_code_rate_t ;
typedef int fe_bandwidth_t ;
struct TYPE_6__ {int fe_fd; } ;
typedef TYPE_1__ dvb_state_t ;
struct TYPE_7__ {TYPE_1__* state; } ;
typedef TYPE_2__ dvb_priv_t ;


 int MP_INFO (TYPE_2__*,char*,...) ;
 int get_dvb_delsys (unsigned int) ;
 int tune_it (TYPE_2__*,int ,unsigned int,int,int,char,int,int ,int,int ,int ,int ,int ,int ,int ,int ,int) ;

int dvb_tune(dvb_priv_t *priv, unsigned int delsys,
             int freq, char pol, int srate, int diseqc,
             int stream_id, fe_spectral_inversion_t specInv,
             fe_modulation_t modulation, fe_guard_interval_t guardInterval,
             fe_transmit_mode_t TransmissionMode, fe_bandwidth_t bandWidth,
             fe_code_rate_t HP_CodeRate,
             fe_code_rate_t LP_CodeRate, fe_hierarchy_t hier,
             int timeout)
{
    MP_INFO(priv, "dvb_tune %s Freq: %lu\n",
            get_dvb_delsys(delsys), (long unsigned int) freq);

    dvb_state_t* state = priv->state;

    int ris = tune_it(priv, state->fe_fd, delsys, freq, srate, pol,
                      stream_id, specInv, diseqc, modulation,
                      HP_CodeRate, TransmissionMode, guardInterval,
                      bandWidth, LP_CodeRate, hier, timeout);

    if (ris != 0)
        MP_INFO(priv, "dvb_tune, TUNING FAILED\n");

    return ris == 0;
}
