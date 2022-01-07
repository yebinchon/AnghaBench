
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int dummy; } ;


 int do_output_signal (struct obs_output*,char*) ;

__attribute__((used)) static inline void signal_reconnect_success(struct obs_output *output)
{
 do_output_signal(output, "reconnect_success");
}
