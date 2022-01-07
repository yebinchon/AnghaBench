
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct obs_output {int dummy; } ;
struct encoder_packet {int dummy; } ;


 int os_gettime_ns () ;
 scalar_t__ pop_packet (struct obs_output*,int ) ;
 int push_packet (struct obs_output*,struct encoder_packet*,int ) ;

void process_delay(void *data, struct encoder_packet *packet)
{
 struct obs_output *output = data;
 uint64_t t = os_gettime_ns();
 push_packet(output, packet, t);
 while (pop_packet(output, t))
  ;
}
