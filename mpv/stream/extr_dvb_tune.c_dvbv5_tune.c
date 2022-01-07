
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dtv_properties {int num; TYPE_2__* props; } ;
typedef int dvb_priv_t ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ u; int cmd; } ;


 int FE_SET_PROPERTY ;
 int MP_ERR (int *,char*) ;
 int MP_VERBOSE (int *,char*,...) ;
 int get_dvb_delsys (unsigned int) ;
 scalar_t__ ioctl (int,int ,struct dtv_properties*) ;

__attribute__((used)) static int dvbv5_tune(dvb_priv_t *priv, int fd_frontend,
                       unsigned int delsys, struct dtv_properties* cmdseq)
{
    MP_VERBOSE(priv, "Tuning via S2API, channel is %s.\n",
               get_dvb_delsys(delsys));
    MP_VERBOSE(priv, "Dumping raw tuning commands and values:\n");
    for (int i = 0; i < cmdseq->num; ++i) {
        MP_VERBOSE(priv, "%02d: 0x%x(%d) => 0x%x(%d)\n",
                   i, cmdseq->props[i].cmd, cmdseq->props[i].cmd,
                   cmdseq->props[i].u.data, cmdseq->props[i].u.data);
    }
    if (ioctl(fd_frontend, FE_SET_PROPERTY, cmdseq) < 0) {
        MP_ERR(priv, "ERROR tuning channel\n");
        return -1;
    }
    return 0;
}
