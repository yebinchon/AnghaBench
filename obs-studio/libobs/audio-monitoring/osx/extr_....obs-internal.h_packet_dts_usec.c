
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoder_packet {int dts; int timebase_den; } ;
typedef int int64_t ;


 int MICROSECOND_DEN ;

__attribute__((used)) static inline int64_t packet_dts_usec(struct encoder_packet *packet)
{
 return packet->dts * MICROSECOND_DEN / packet->timebase_den;
}
