
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct obs_encoder {TYPE_1__ info; } ;
struct encoder_packet {int dummy; } ;
struct encoder_callback {int param; int (* new_packet ) (int ,struct encoder_packet*) ;int sent_first_packet; } ;


 scalar_t__ OBS_ENCODER_VIDEO ;
 int send_first_video_packet (struct obs_encoder*,struct encoder_callback*,struct encoder_packet*) ;
 int stub1 (int ,struct encoder_packet*) ;

__attribute__((used)) static inline void send_packet(struct obs_encoder *encoder,
          struct encoder_callback *cb,
          struct encoder_packet *packet)
{

 if (encoder->info.type == OBS_ENCODER_VIDEO && !cb->sent_first_packet)
  send_first_video_packet(encoder, cb, packet);
 else
  cb->new_packet(cb->param, packet);
}
