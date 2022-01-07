
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoder_packet {int timebase_den; } ;
typedef int int64_t ;
typedef int int32_t ;


 int MILLISECOND_DEN ;

__attribute__((used)) static int32_t get_ms_time(struct encoder_packet *packet, int64_t val)
{
 return (int32_t)(val * MILLISECOND_DEN / packet->timebase_den);
}
