
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct dvb_frontend_info {int num; int type; int caps; int name; struct dtv_property* props; } ;
struct TYPE_3__ {unsigned int len; scalar_t__* data; } ;
struct TYPE_4__ {int data; TYPE_1__ buffer; } ;
struct dtv_property {TYPE_2__ u; int cmd; } ;
struct dtv_properties {int num; int type; int caps; int name; struct dtv_property* props; } ;


 int DELSYS_IS_SET (unsigned int,unsigned int) ;
 int DELSYS_SET (unsigned int,unsigned int) ;
 int DTV_API_VERSION ;
 int DTV_ENUM_DELSYS ;

 int FE_CAN_16VSB ;
 int FE_CAN_2G_MODULATION ;
 int FE_CAN_8VSB ;
 int FE_CAN_QAM_256 ;
 int FE_CAN_QAM_64 ;
 int FE_CAN_QAM_AUTO ;
 int FE_CAN_TURBO_FEC ;
 int FE_GET_INFO ;
 int FE_GET_PROPERTY ;



 unsigned int SYS_ATSC ;
 unsigned int SYS_DVBC_ANNEX_A ;
 unsigned int SYS_DVBC_ANNEX_B ;
 unsigned int SYS_DVBC_ANNEX_C ;
 unsigned int SYS_DVBS ;
 unsigned int SYS_DVBS2 ;
 unsigned int SYS_DVBT ;
 unsigned int SYS_DVBT2 ;
 unsigned int SYS_DVB__COUNT__ ;
 unsigned int SYS_TURBO ;
 int errno ;
 int get_dvb_delsys (unsigned int) ;
 scalar_t__ ioctl (int,int ,struct dvb_frontend_info*) ;
 int memset (struct dvb_frontend_info*,int,int) ;
 int mp_err (struct mp_log*,char*,int,...) ;
 int mp_verbose (struct mp_log*,char*,int,...) ;

unsigned int dvb_get_tuner_delsys_mask(int fe_fd, struct mp_log *log)
{
    unsigned int ret_mask = 0, delsys;
    struct dtv_property prop[1];
    struct dtv_properties cmdseq = {.num = 1, .props = prop};
    struct dvb_frontend_info fe_info;
    mp_verbose(log, "Querying tuner frontend type via pre-DVBv5 API for frontend FD %d\n",
               fe_fd);

    memset(&fe_info, 0x00, sizeof(struct dvb_frontend_info));
    if (ioctl(fe_fd, FE_GET_INFO, &fe_info) < 0) {
        mp_err(log, "DVBv3: FE_GET_INFO error: %d, FD: %d\n\n", errno, fe_fd);
        return ret_mask;
    }

    prop[0].cmd = DTV_API_VERSION;
    if (ioctl(fe_fd, FE_GET_PROPERTY, &cmdseq) < 0) {
        prop[0].u.data = 0x0300;
    }

    mp_verbose(log, "DVBv3: Queried tuner frontend type of device named '%s', FD: %d\n",
               fe_info.name, fe_fd);
    switch (fe_info.type) {
    case 130:
        DELSYS_SET(ret_mask, SYS_DVBT);
        if (prop[0].u.data < 0x0500)
            break;
        if (FE_CAN_2G_MODULATION & fe_info.caps) {
            DELSYS_SET(ret_mask, SYS_DVBT2);
        }
        break;
    case 128:
        DELSYS_SET(ret_mask, SYS_DVBS);
        if (prop[0].u.data < 0x0500)
            break;
        if (FE_CAN_2G_MODULATION & fe_info.caps) {
            DELSYS_SET(ret_mask, SYS_DVBS2);
        }





        break;
    case 129:
        DELSYS_SET(ret_mask, SYS_DVBC_ANNEX_A);
        DELSYS_SET(ret_mask, SYS_DVBC_ANNEX_C);
        break;
    default:
        mp_err(log, "DVBv3: Unknown tuner frontend type: %d\n", fe_info.type);
        return ret_mask;
    }

    for (delsys = 0; delsys < SYS_DVB__COUNT__; delsys ++) {
        if (!DELSYS_IS_SET(ret_mask, delsys))
            continue;
        mp_verbose(log, "DVBv3: Tuner frontend type seems to be %s\n", get_dvb_delsys(delsys));
    }

    return ret_mask;
}
