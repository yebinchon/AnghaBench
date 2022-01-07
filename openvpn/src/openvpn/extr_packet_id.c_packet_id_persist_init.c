
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_id_persist {int fd; scalar_t__ id_last_written; scalar_t__ id; scalar_t__ time_last_written; scalar_t__ time; int * filename; } ;



void
packet_id_persist_init(struct packet_id_persist *p)
{
    p->filename = ((void*)0);
    p->fd = -1;
    p->time = p->time_last_written = 0;
    p->id = p->id_last_written = 0;
}
