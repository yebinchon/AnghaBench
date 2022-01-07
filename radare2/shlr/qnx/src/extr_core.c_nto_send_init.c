
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_6__ {scalar_t__ channel; int mid; scalar_t__ subcmd; scalar_t__ cmd; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
struct TYPE_7__ {TYPE_3__ pkt; } ;
struct TYPE_9__ {TYPE_2__ tran; int mid; } ;
typedef TYPE_4__ libqnxr_t ;


 scalar_t__ SET_CHANNEL_DEBUG ;

void nto_send_init (libqnxr_t *g, ut32 cmd, ut32 subcmd, ut32 chan) {
 g->tran.pkt.hdr.cmd = cmd;
 g->tran.pkt.hdr.subcmd = subcmd;
 g->tran.pkt.hdr.mid = ((chan == SET_CHANNEL_DEBUG) ? g->mid++ : 0);
 g->tran.pkt.hdr.channel = chan;
}
