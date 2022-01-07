
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ seq_list; } ;
struct packet_id {TYPE_1__ rec; } ;


 int CLEAR (struct packet_id) ;
 int D_PID_DEBUG ;
 int dmsg (int ,char*) ;
 int free (scalar_t__) ;

void
packet_id_free(struct packet_id *p)
{
    if (p)
    {
        dmsg(D_PID_DEBUG, "PID packet_id_free");
        if (p->rec.seq_list)
        {
            free(p->rec.seq_list);
        }
        CLEAR(*p);
    }
}
