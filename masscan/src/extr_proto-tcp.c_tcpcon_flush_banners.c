
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int protocol; scalar_t__ length; int banner; struct BannerOutput* next; } ;
struct TCP_Control_Block {struct BannerOutput banout; int ttl; int port_them; int ip_them; } ;
struct TCP_ConnectionTable {int out; int (* report_banner ) (int ,int ,int ,int,int ,int,int ,int ,scalar_t__) ;} ;


 int banout_release (struct BannerOutput*) ;
 int global_now ;
 int stub1 (int ,int ,int ,int,int ,int,int ,int ,scalar_t__) ;

__attribute__((used)) static void
tcpcon_flush_banners(struct TCP_ConnectionTable *tcpcon, struct TCP_Control_Block *tcb)
{
    struct BannerOutput *banout;





    for (banout = &tcb->banout; banout != ((void*)0); banout = banout->next) {
        if (banout->length && banout->protocol) {
            tcpcon->report_banner(
                                  tcpcon->out,
                                  global_now,
                                  tcb->ip_them,
                                  6,
                                  tcb->port_them,
                                  banout->protocol & 0x0FFFFFFF,
                                  tcb->ttl,
                                  banout->banner,
                                  banout->length);
        }
    }




    banout_release(&tcb->banout);

}
