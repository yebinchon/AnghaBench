
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct encoder_packet* array; } ;
struct obs_output {TYPE_1__ interleaved_packets; } ;
struct encoder_packet {scalar_t__ type; int dts_usec; scalar_t__ track_idx; } ;


 int LOG_DEBUG ;
 scalar_t__ OBS_ENCODER_AUDIO ;
 int blog (int ,char*,...) ;
 int discard_to_idx (struct obs_output*,size_t) ;
 size_t get_interleaved_start_idx (struct obs_output*) ;
 int prune_premature_packets (struct obs_output*) ;

__attribute__((used)) static bool prune_interleaved_packets(struct obs_output *output)
{
 size_t start_idx = 0;
 int prune_start = prune_premature_packets(output);
 if (prune_start == -1)
  return 0;
 else if (prune_start != 0)
  start_idx = (size_t)prune_start;
 else
  start_idx = get_interleaved_start_idx(output);

 if (start_idx)
  discard_to_idx(output, start_idx);

 return 1;
}
