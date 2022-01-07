
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_id_send {scalar_t__ time; scalar_t__ id; } ;


 scalar_t__ PACKET_ID_MAX ;
 scalar_t__ now ;

__attribute__((used)) static bool
packet_id_send_update(struct packet_id_send *p, bool long_form)
{
    if (!p->time)
    {
        p->time = now;
    }
    if (p->id == PACKET_ID_MAX)
    {



        if (!long_form || now <= p->time)
        {
            return 0;
        }
        p->time = now;
        p->id = 0;
    }
    p->id++;
    return 1;
}
