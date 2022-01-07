
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int app_proto; } ;
struct TCP_Control_Block {int ip_them; struct TCP_Control_Block* next; scalar_t__ port_me; scalar_t__ ip_me; scalar_t__ port_them; int timeout; TYPE_1__ banner1_state; scalar_t__ scripting_thread; scalar_t__ payload; scalar_t__ payload_length; scalar_t__ is_payload_dynamic; int seqno_them; } ;
struct TCP_ConnectionTable {unsigned int mask; int active_count; struct TCP_Control_Block* freed_list; struct TCP_Control_Block** entries; int entropy; } ;
typedef enum DestroyReason { ____Placeholder_DestroyReason } DestroyReason ;
struct TYPE_4__ {int (* cleanup ) (TYPE_1__*) ;} ;


 int LOG (int,char*,int,int,int,int,scalar_t__,int ) ;

 int UNUSEDPARM (int) ;
 TYPE_2__ banner_smb1 ;
 int free (void*) ;
 int stub1 (TYPE_1__*) ;
 unsigned int tcb_hash (scalar_t__,scalar_t__,int,scalar_t__,int ) ;
 int tcpcon_flush_banners (struct TCP_ConnectionTable*,struct TCP_Control_Block*) ;
 int timeout_unlink (int ) ;

__attribute__((used)) static void
tcpcon_destroy_tcb(
    struct TCP_ConnectionTable *tcpcon,
    struct TCP_Control_Block *tcb,
    enum DestroyReason reason)
{
    unsigned index;
    struct TCP_Control_Block **r_entry;

    UNUSEDPARM(reason);





    index = tcb_hash( tcb->ip_me, tcb->port_me,
                        tcb->ip_them, tcb->port_them,
                        tcpcon->entropy);





    r_entry = &tcpcon->entries[index & tcpcon->mask];
    while (*r_entry && *r_entry != tcb)
        r_entry = &(*r_entry)->next;

    if (*r_entry == ((void*)0)) {



        LOG(1, "tcb: double free: %u.%u.%u.%u : %u (0x%x)\n",
                (tcb->ip_them>>24)&0xFF,
                (tcb->ip_them>>16)&0xFF,
                (tcb->ip_them>> 8)&0xFF,
                (tcb->ip_them>> 0)&0xFF,
                tcb->port_them,
                tcb->seqno_them
                );
        return;
    }






    tcpcon_flush_banners(tcpcon, tcb);
    if (tcb->is_payload_dynamic && tcb->payload_length && tcb->payload)
        free((void*)tcb->payload);

    if (tcb->scripting_thread)
        ;
    tcb->scripting_thread = 0;


    switch (tcb->banner1_state.app_proto) {
        case 128:
            banner_smb1.cleanup(&tcb->banner1_state);
            break;
    }




    timeout_unlink(tcb->timeout);

    tcb->ip_them = 0;
    tcb->port_them = 0;
    tcb->ip_me = 0;
    tcb->port_me = 0;

    (*r_entry) = tcb->next;
    tcb->next = tcpcon->freed_list;
    tcpcon->freed_list = tcb;
    tcpcon->active_count--;
}
