
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {void* modulation; } ;
struct TYPE_17__ {unsigned int symbol_rate; void* modulation; void* fec_inner; } ;
struct TYPE_16__ {unsigned int symbol_rate; void* fec_inner; } ;
struct TYPE_15__ {int transmission_mode; int guard_interval; int hierarchy_information; void* constellation; void* code_rate_LP; void* code_rate_HP; int bandwidth; } ;
struct TYPE_19__ {TYPE_4__ vsb; TYPE_3__ qam; TYPE_2__ qpsk; TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {int num; unsigned int frequency; void* inversion; TYPE_5__ u; struct dtv_property* props; } ;
struct dvb_frontend_event {int num; unsigned int frequency; void* inversion; TYPE_5__ u; struct dtv_property* props; } ;
struct TYPE_21__ {unsigned int data; } ;
struct dtv_property {int cmd; TYPE_7__ u; } ;
struct dtv_properties {int num; unsigned int frequency; void* inversion; TYPE_5__ u; struct dtv_property* props; } ;
typedef int p ;
typedef int feparams ;
typedef int fe_transmit_mode_t ;
typedef void* fe_spectral_inversion_t ;
typedef void* fe_modulation_t ;
typedef int fe_hierarchy_t ;
typedef int fe_guard_interval_t ;
typedef void* fe_code_rate_t ;
typedef int fe_bandwidth_t ;
struct TYPE_22__ {size_t cur_adapter; TYPE_6__* adapters; } ;
typedef TYPE_8__ dvb_state_t ;
struct TYPE_23__ {TYPE_8__* state; } ;
typedef TYPE_9__ dvb_priv_t ;
struct TYPE_20__ {int devno; } ;
 int DTV_BANDWIDTH_HZ ;
 int DTV_CLEAR ;
 int DTV_CODE_RATE_HP ;
 int DTV_CODE_RATE_LP ;
 int DTV_DELIVERY_SYSTEM ;
 int DTV_FREQUENCY ;
 int DTV_GUARD_INTERVAL ;
 int DTV_HIERARCHY ;
 int DTV_INNER_FEC ;
 int DTV_INVERSION ;
 int DTV_MODULATION ;
 int DTV_PILOT ;
 int DTV_ROLLOFF ;
 int DTV_STREAM_ID ;
 int DTV_SYMBOL_RATE ;
 int DTV_TRANSMISSION_MODE ;
 int DTV_TUNE ;
 int FE_GET_EVENT ;
 int FE_SET_FRONTEND ;
 int FE_SET_PROPERTY ;
 unsigned int LOF1 ;
 unsigned int LOF2 ;
 int MP_ERR (TYPE_9__*,char*) ;
 int MP_VERBOSE (TYPE_9__*,char*,...) ;
 int NO_STREAM_ID_FILTER ;
 void* PILOT_AUTO ;
 void* ROLLOFF_AUTO ;
 unsigned int SLOF ;
 int check_status (TYPE_9__*,int,int) ;
 int do_diseqc (int,unsigned int,int,int) ;
 int dvbv5_tune (TYPE_9__*,int,unsigned int,struct dvb_frontend_parameters*) ;
 int get_dvb_delsys (unsigned int) ;
 scalar_t__ ioctl (int,int ,struct dvb_frontend_parameters*) ;
 int memset (struct dvb_frontend_parameters*,int,int) ;

__attribute__((used)) static int tune_it(dvb_priv_t *priv, int fd_frontend, unsigned int delsys,
                   unsigned int freq, unsigned int srate, char pol,
                   int stream_id,
                   fe_spectral_inversion_t specInv, unsigned int diseqc,
                   fe_modulation_t modulation,
                   fe_code_rate_t HP_CodeRate,
                   fe_transmit_mode_t TransmissionMode,
                   fe_guard_interval_t guardInterval,
                   fe_bandwidth_t bandwidth,
                   fe_code_rate_t LP_CodeRate, fe_hierarchy_t hier,
                   int timeout)
{
    int hi_lo = 0, bandwidth_hz = 0;
    dvb_state_t* state = priv->state;
    struct dvb_frontend_parameters feparams;


    MP_VERBOSE(priv, "TUNE_IT, fd_frontend %d, %s freq %lu, srate %lu, "
               "pol %c, diseqc %u\n", fd_frontend,
               get_dvb_delsys(delsys),
               (long unsigned int)freq, (long unsigned int)srate,
               (pol > ' ' ? pol : '-'), diseqc);

    MP_VERBOSE(priv, "Using %s adapter %d\n",
        get_dvb_delsys(delsys),
        state->adapters[state->cur_adapter].devno);

    {

        struct dvb_frontend_event ev;
        while (1) {
            if (ioctl(fd_frontend, FE_GET_EVENT, &ev) < 0)
                break;
        }
    }


    switch (delsys) {
    case 128:

        MP_ERR(priv, "ERROR: Can not tune to T2 channel, S2-API not "
                     "available, will tune to DVB-T!\n");


    case 129:
        if (freq < 1000000)
            freq *= 1000UL;
        switch (bandwidth) {
        case 140:
            bandwidth_hz = 5000000;
            break;
        case 139:
            bandwidth_hz = 6000000;
            break;
        case 138:
            bandwidth_hz = 7000000;
            break;
        case 137:
            bandwidth_hz = 8000000;
            break;
        case 141:
            bandwidth_hz = 10000000;
            break;
        case 136:
            if (freq < 474000000) {
                bandwidth_hz = 7000000;
            } else {
                bandwidth_hz = 8000000;
            }
            break;
        default:
            bandwidth_hz = 0;
            break;
        }

        MP_VERBOSE(priv, "tuning %s to %d Hz, bandwidth: %d\n",
                   get_dvb_delsys(delsys), freq, bandwidth_hz);
        break;
    case 130:

        MP_ERR(priv, "ERROR: Can not tune to S2 channel, S2-API not "
                     "available, will tune to DVB-S!\n");


    case 131:
        if (freq > 2200000) {

            if (freq < SLOF) {
                freq -= LOF1;
                hi_lo = 0;
            } else {
                freq -= LOF2;
                hi_lo = 1;
            }
        }
        MP_VERBOSE(priv, "tuning %s to Freq: %u, Pol: %c Srate: %d, "
                   "22kHz: %s, LNB:  %d\n", get_dvb_delsys(delsys), freq,
                   pol, srate, hi_lo ? "on" : "off", diseqc);

        if (do_diseqc(fd_frontend, diseqc, (pol == 'V' ? 1 : 0), hi_lo) == 0) {
            MP_VERBOSE(priv, "DISEQC setting succeeded\n");
        } else {
            MP_ERR(priv, "DISEQC setting failed\n");
            return -1;
        }

        break;
    case 134:
    case 132:
        MP_VERBOSE(priv, "tuning %s to %d, srate=%d\n",
                   get_dvb_delsys(delsys), freq, srate);
        break;







    default:
        MP_VERBOSE(priv, "Unknown FE type. Aborting\n");
        return 0;
    }
    MP_VERBOSE(priv, "Tuning via DVB-API version 3.\n");

    if (stream_id != NO_STREAM_ID_FILTER && stream_id != 0) {
        MP_ERR(priv, "DVB-API version 3 does not support stream_id (PLP).\n");
        return -1;
    }
    memset(&feparams, 0x00, sizeof(feparams));
    feparams.frequency = freq;
    feparams.inversion = specInv;

    switch (delsys) {
    case 129:
    case 128:
        feparams.u.ofdm.bandwidth = bandwidth;
        feparams.u.ofdm.code_rate_HP = HP_CodeRate;
        feparams.u.ofdm.code_rate_LP = LP_CodeRate;
        feparams.u.ofdm.constellation = modulation;
        feparams.u.ofdm.transmission_mode = TransmissionMode;
        feparams.u.ofdm.guard_interval = guardInterval;
        feparams.u.ofdm.hierarchy_information = hier;
        break;
    case 131:
    case 130:
        feparams.u.qpsk.symbol_rate = srate;
        feparams.u.qpsk.fec_inner = HP_CodeRate;
        break;
    case 134:
    case 132:
        feparams.u.qam.symbol_rate = srate;
        feparams.u.qam.fec_inner = HP_CodeRate;
        feparams.u.qam.modulation = modulation;
        break;






    }

    if (ioctl(fd_frontend, FE_SET_FRONTEND, &feparams) < 0) {
        MP_ERR(priv, "ERROR tuning channel\n");
        return -1;
    }

    return check_status(priv, fd_frontend, timeout);
}
