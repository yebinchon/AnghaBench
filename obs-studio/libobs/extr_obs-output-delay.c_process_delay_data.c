
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int (* delay_callback ) (struct obs_output*,int *) ;} ;
struct delay_data {int msg; int ts; int packet; } ;





 int delay_active (struct obs_output*) ;
 int delay_capturing (struct obs_output*) ;
 int obs_encoder_packet_release (int *) ;
 int obs_output_actual_start (struct obs_output*) ;
 int obs_output_actual_stop (struct obs_output*,int,int ) ;
 int stub1 (struct obs_output*,int *) ;

__attribute__((used)) static inline void process_delay_data(struct obs_output *output,
          struct delay_data *dd)
{
 switch (dd->msg) {
 case 130:
  if (!delay_active(output) || !delay_capturing(output))
   obs_encoder_packet_release(&dd->packet);
  else
   output->delay_callback(output, &dd->packet);
  break;
 case 129:
  obs_output_actual_start(output);
  break;
 case 128:
  obs_output_actual_stop(output, 0, dd->ts);
  break;
 }
}
