
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short port; } ;
struct TCP_Control_Block {unsigned int ip_me; unsigned int ip_them; unsigned short port_me; unsigned short port_them; unsigned int seqno_me; unsigned int seqno_them; unsigned int ackno_me; unsigned int ackno_them; unsigned char ttl; int banout; int timeout; TYPE_1__ banner1_state; int when_created; struct TCP_Control_Block* next; } ;
struct TCP_ConnectionTable {unsigned int mask; int active_count; struct TCP_Control_Block** entries; struct TCP_Control_Block* freed_list; int entropy; } ;


 int EQUALS (struct TCP_Control_Block*,struct TCP_Control_Block*) ;
 struct TCP_Control_Block* MALLOC (int) ;
 int banout_init (int *) ;
 int global_now ;
 int memcpy (struct TCP_Control_Block*,struct TCP_Control_Block*,int) ;
 int memset (struct TCP_Control_Block*,int ,int) ;
 unsigned int tcb_hash (unsigned int,unsigned int,unsigned int,unsigned int,int ) ;
 int timeout_init (int ) ;

struct TCP_Control_Block *
tcpcon_create_tcb(
    struct TCP_ConnectionTable *tcpcon,
    unsigned ip_me, unsigned ip_them,
    unsigned port_me, unsigned port_them,
    unsigned seqno_me, unsigned seqno_them,
    unsigned ttl)
{
    unsigned index;
    struct TCP_Control_Block tmp;
    struct TCP_Control_Block *tcb;

    tmp.ip_me = ip_me;
    tmp.ip_them = ip_them;
    tmp.port_me = (unsigned short)port_me;
    tmp.port_them = (unsigned short)port_them;

    index = tcb_hash(ip_me, port_me, ip_them, port_them, tcpcon->entropy);
    tcb = tcpcon->entries[index & tcpcon->mask];
    while (tcb && !EQUALS(tcb, &tmp)) {
        tcb = tcb->next;
    }
    if (tcb == ((void*)0)) {
        if (tcpcon->freed_list) {
            tcb = tcpcon->freed_list;
            tcpcon->freed_list = tcb->next;
        } else {
            tcb = MALLOC(sizeof(*tcb));
        }
        memset(tcb, 0, sizeof(*tcb));
        tcb->next = tcpcon->entries[index & tcpcon->mask];
        tcpcon->entries[index & tcpcon->mask] = tcb;
        memcpy(tcb, &tmp, 12);
        tcb->seqno_me = seqno_me;
        tcb->seqno_them = seqno_them;
        tcb->ackno_me = seqno_them;
        tcb->ackno_them = seqno_me;
        tcb->when_created = global_now;
        tcb->banner1_state.port = tmp.port_them;
        tcb->ttl = (unsigned char)ttl;

        timeout_init(tcb->timeout);
        banout_init(&tcb->banout);

        tcpcon->active_count++;
    }

    return tcb;
}
