
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int (* encoded_packet ) (int ,struct encoder_packet*) ;} ;
struct TYPE_8__ {struct encoder_packet* array; } ;
struct obs_output {double caption_timestamp; TYPE_3__ context; TYPE_2__ info; int caption_mutex; TYPE_1__* caption_head; int total_frames; TYPE_4__ interleaved_packets; } ;
struct encoder_packet {scalar_t__ type; double pts; double timebase_num; scalar_t__ timebase_den; } ;
struct TYPE_5__ {double display_duration; int * text; } ;


 int LOG_DEBUG ;
 scalar_t__ OBS_ENCODER_VIDEO ;
 scalar_t__ add_caption (struct obs_output*,struct encoder_packet*) ;
 int blog (int ,char*,double,int *) ;
 int da_erase (TYPE_4__,int ) ;
 int has_higher_opposing_ts (struct obs_output*,struct encoder_packet*) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ,struct encoder_packet*) ;

__attribute__((used)) static inline void send_interleaved(struct obs_output *output)
{
 struct encoder_packet out = output->interleaved_packets.array[0];




 if (!has_higher_opposing_ts(output, &out))
  return;

 da_erase(output->interleaved_packets, 0);

 if (out.type == OBS_ENCODER_VIDEO) {
  output->total_frames++;
 }

 output->info.encoded_packet(output->context.data, &out);
 obs_encoder_packet_release(&out);
}
