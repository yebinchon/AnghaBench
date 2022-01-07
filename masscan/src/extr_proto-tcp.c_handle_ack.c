
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct TCP_Control_Block {int ip_them; scalar_t__ seqno_me; scalar_t__ ackno_them; scalar_t__ ackno_me; } ;


 int LOG (int,char*,int,int,int,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
handle_ack(
    struct TCP_Control_Block *tcb,
    uint32_t ackno)
{

    LOG(4, "%u.%u.%u.%u - %u-sending, %u-reciving\n",
            (tcb->ip_them>>24)&0xFF, (tcb->ip_them>>16)&0xFF, (tcb->ip_them>>8)&0xFF, (tcb->ip_them>>0)&0xFF,
            tcb->seqno_me - ackno,
            ackno - tcb->ackno_them
            );


    if (ackno == tcb->ackno_them) {
        return 0;
    }



    if (ackno - tcb->ackno_them > 10000) {
        LOG(4, "%u.%u.%u.%u - "
                "tcb: ackno from past: "
                "old ackno = 0x%08x, this ackno = 0x%08x\n",
                (tcb->ip_them>>24)&0xFF, (tcb->ip_them>>16)&0xFF, (tcb->ip_them>>8)&0xFF, (tcb->ip_them>>0)&0xFF,
                tcb->ackno_me, ackno);
        return 0;
    }



    if (tcb->seqno_me - ackno > 10000) {
        LOG(4, "%u.%u.%u.%u - "
                "tcb: ackno from future: "
                "my seqno = 0x%08x, their ackno = 0x%08x\n",
                (tcb->ip_them>>24)&0xFF, (tcb->ip_them>>16)&0xFF, (tcb->ip_them>>8)&0xFF, (tcb->ip_them>>0)&0xFF,
                tcb->seqno_me, ackno);
        return 0;
    }


    tcb->ackno_them = ackno;


    return 1;
}
