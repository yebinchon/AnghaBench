
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_id_send {scalar_t__ id; } ;


 scalar_t__ PACKET_ID_WRAP_TRIGGER ;

__attribute__((used)) static inline bool
packet_id_close_to_wrapping(const struct packet_id_send *p)
{
    return p->id >= PACKET_ID_WRAP_TRIGGER;
}
