
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_16__ {int status; } ;
struct TYPE_15__ {int cmd; } ;
struct TYPE_17__ {TYPE_5__ okstatus; TYPE_4__ hdr; } ;
struct TYPE_18__ {TYPE_6__ pkt; } ;
struct TYPE_12__ {int data; int addr; } ;
struct TYPE_13__ {TYPE_1__ memwr; } ;
struct TYPE_14__ {TYPE_2__ pkt; } ;
struct TYPE_19__ {TYPE_7__ recv; TYPE_3__ tran; } ;
typedef TYPE_8__ libqnxr_t ;




 int DStMsg_memwr ;
 int DStMsg_memwr_t ;
 int EXTRACT_SIGNED_INTEGER (int *,int) ;
 int EXTRACT_UNSIGNED_INTEGER (int*,int) ;
 int SET_CHANNEL_DEBUG ;
 int memcpy (int ,int const*,int) ;
 int nto_send (TYPE_8__*,int,int ) ;
 int nto_send_init (TYPE_8__*,int ,int ,int ) ;
 int offsetof (int ,int const*) ;

int qnxr_write_memory (libqnxr_t *g, ut64 address, const ut8 *data, ut64 len) {
 ut64 addr;

 if (!g || !data) return -1;

 nto_send_init (g, DStMsg_memwr, 0, SET_CHANNEL_DEBUG);
 addr = address;
 g->tran.pkt.memwr.addr = EXTRACT_UNSIGNED_INTEGER (&addr, 8);
 memcpy (g->tran.pkt.memwr.data, data, len);
 nto_send (g, offsetof (DStMsg_memwr_t, data) + len, 0);

 switch (g->recv.pkt.hdr.cmd) {
 case 129:
  return len;
 case 128:
  return EXTRACT_SIGNED_INTEGER (&g->recv.pkt.okstatus.status, 4);
 }

 return 0;
}
