
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initialized; } ;
struct packet_id {TYPE_1__ rec; } ;



__attribute__((used)) static inline bool
packet_id_initialized(const struct packet_id *pid)
{
    return pid->rec.initialized;
}
