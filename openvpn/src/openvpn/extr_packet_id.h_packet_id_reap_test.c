
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_id_rec {scalar_t__ last_reap; } ;


 scalar_t__ SEQ_REAP_INTERVAL ;
 scalar_t__ now ;
 int packet_id_reap (struct packet_id_rec*) ;

__attribute__((used)) static inline void
packet_id_reap_test(struct packet_id_rec *p)
{
    if (p->last_reap + SEQ_REAP_INTERVAL <= now)
    {
        packet_id_reap(p);
    }
}
