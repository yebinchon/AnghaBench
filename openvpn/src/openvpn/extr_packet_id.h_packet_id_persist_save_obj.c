
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_id_persist {int id; scalar_t__ time; } ;
struct TYPE_2__ {int id; scalar_t__ time; } ;
struct packet_id {TYPE_1__ rec; } ;


 scalar_t__ packet_id_persist_enabled (struct packet_id_persist*) ;

__attribute__((used)) static inline void
packet_id_persist_save_obj(struct packet_id_persist *p, const struct packet_id *pid)
{
    if (packet_id_persist_enabled(p) && pid->rec.time)
    {
        p->time = pid->rec.time;
        p->id = pid->rec.id;
    }
}
