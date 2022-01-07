
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_id_persist {scalar_t__ fd; } ;



__attribute__((used)) static inline bool
packet_id_persist_enabled(const struct packet_id_persist *p)
{
    return p->fd >= 0;
}
