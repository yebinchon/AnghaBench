
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_8__ {TYPE_1__* d1; } ;
struct TYPE_7__ {long link_mtu; long mtu; } ;
typedef TYPE_2__ SSL ;


 int DTLS1_MAX_MTU_OVERHEAD ;





 int * dtls1_get_timeout (TYPE_2__*,struct timeval*) ;
 int dtls1_handle_timeout (TYPE_2__*) ;
 scalar_t__ dtls1_link_min_mtu () ;
 int ssl3_ctrl (TYPE_2__*,int,long,void*) ;

long dtls1_ctrl(SSL *s, int cmd, long larg, void *parg)
{
    int ret = 0;

    switch (cmd) {
    case 131:
        if (dtls1_get_timeout(s, (struct timeval *)parg) != ((void*)0)) {
            ret = 1;
        }
        break;
    case 130:
        ret = dtls1_handle_timeout(s);
        break;
    case 129:
        if (larg < (long)dtls1_link_min_mtu())
            return 0;
        s->d1->link_mtu = larg;
        return 1;
    case 132:
        return (long)dtls1_link_min_mtu();
    case 128:




        if (larg < (long)dtls1_link_min_mtu() - DTLS1_MAX_MTU_OVERHEAD)
            return 0;
        s->d1->mtu = larg;
        return larg;
    default:
        ret = ssl3_ctrl(s, cmd, larg, parg);
        break;
    }
    return ret;
}
