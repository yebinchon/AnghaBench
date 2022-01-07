
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int delay_flags; } ;


 int OBS_OUTPUT_DELAY_PRESERVE ;

__attribute__((used)) static inline bool preserve_active(struct obs_output *output)
{
 return (output->delay_flags & OBS_OUTPUT_DELAY_PRESERVE) != 0;
}
