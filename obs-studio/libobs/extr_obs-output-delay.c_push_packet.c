
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct obs_output {int delay_mutex; int delay_data; } ;
struct encoder_packet {int dummy; } ;
struct delay_data {int packet; int ts; int msg; int member_0; } ;
typedef int dd ;


 int DELAY_MSG_PACKET ;
 int circlebuf_push_back (int *,struct delay_data*,int) ;
 int obs_encoder_packet_create_instance (int *,struct encoder_packet*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void push_packet(struct obs_output *output,
          struct encoder_packet *packet, uint64_t t)
{
 struct delay_data dd = {0};

 dd.msg = DELAY_MSG_PACKET;
 dd.ts = t;
 obs_encoder_packet_create_instance(&dd.packet, packet);

 pthread_mutex_lock(&output->delay_mutex);
 circlebuf_push_back(&output->delay_data, &dd, sizeof(dd));
 pthread_mutex_unlock(&output->delay_mutex);
}
