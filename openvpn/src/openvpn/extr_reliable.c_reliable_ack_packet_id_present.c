
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reliable_ack {int len; scalar_t__* packet_id; } ;
typedef scalar_t__ packet_id_type ;



__attribute__((used)) static inline bool
reliable_ack_packet_id_present(struct reliable_ack *ack, packet_id_type pid)
{
    int i;
    for (i = 0; i < ack->len; ++i)
    {
        if (ack->packet_id[i] == pid)
        {
            return 1;
        }
    }
    return 0;
}
