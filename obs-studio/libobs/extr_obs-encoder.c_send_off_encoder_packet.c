
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct encoder_packet {void* sys_dts_usec; void* dts_usec; } ;
struct encoder_callback {int dummy; } ;
struct TYPE_10__ {size_t num; struct encoder_callback* array; } ;
struct TYPE_9__ {int ts_offset; int mutex; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_11__ {int first_received; void* offset_usec; int start_ts; int callbacks_mutex; TYPE_3__ callbacks; TYPE_2__ pause; TYPE_1__ context; } ;
typedef TYPE_4__ obs_encoder_t ;


 int LOG_ERROR ;
 int blog (int ,char*,int ) ;
 int full_stop (TYPE_4__*) ;
 void* packet_dts_usec (struct encoder_packet*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int send_packet (TYPE_4__*,struct encoder_callback*,struct encoder_packet*) ;

void send_off_encoder_packet(obs_encoder_t *encoder, bool success,
        bool received, struct encoder_packet *pkt)
{
 if (!success) {
  blog(LOG_ERROR, "Error encoding with encoder '%s'",
       encoder->context.name);
  full_stop(encoder);
  return;
 }

 if (received) {
  if (!encoder->first_received) {
   encoder->offset_usec = packet_dts_usec(pkt);
   encoder->first_received = 1;
  }



  pkt->dts_usec = encoder->start_ts / 1000 +
    packet_dts_usec(pkt) - encoder->offset_usec;
  pkt->sys_dts_usec = pkt->dts_usec;

  pthread_mutex_lock(&encoder->pause.mutex);
  pkt->sys_dts_usec += encoder->pause.ts_offset / 1000;
  pthread_mutex_unlock(&encoder->pause.mutex);

  pthread_mutex_lock(&encoder->callbacks_mutex);

  for (size_t i = encoder->callbacks.num; i > 0; i--) {
   struct encoder_callback *cb;
   cb = encoder->callbacks.array + (i - 1);
   send_packet(encoder, cb, pkt);
  }

  pthread_mutex_unlock(&encoder->callbacks_mutex);
 }
}
