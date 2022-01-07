
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_11__ {scalar_t__ cmd; } ;
struct TYPE_12__ {TYPE_1__ hdr; } ;
struct TYPE_13__ {TYPE_2__ pkt; } ;
struct TYPE_14__ {scalar_t__ size; int addr; } ;
struct TYPE_15__ {TYPE_4__ brk; } ;
struct TYPE_16__ {TYPE_5__ pkt; } ;
struct TYPE_17__ {TYPE_3__ recv; TYPE_6__ tran; } ;
typedef TYPE_7__ libqnxr_t ;
typedef enum Breakpoint { ____Placeholder_Breakpoint } Breakpoint ;


 int DSMSG_BRK_EXEC ;
 scalar_t__ DSrMsg_err ;
 int DStMsg_brk ;
 int EXTRACT_UNSIGNED_INTEGER (int *,int) ;
 int SET_CHANNEL_DEBUG ;
 int nto_send (TYPE_7__*,int,int ) ;
 int nto_send_init (TYPE_7__*,int ,int ,int ) ;

int _qnxr_set_bp (libqnxr_t *g, ut64 address, const char *conditions, enum Breakpoint type) {
 if (!g) return -1;

 nto_send_init (g, DStMsg_brk, DSMSG_BRK_EXEC, SET_CHANNEL_DEBUG);
 g->tran.pkt.brk.addr = EXTRACT_UNSIGNED_INTEGER (&address, 4);
 g->tran.pkt.brk.size = 0;
 nto_send (g, sizeof (g->tran.pkt.brk), 0);

 if (g->recv.pkt.hdr.cmd == DSrMsg_err)
  return -1;
 return 0;
}
