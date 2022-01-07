
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int timing_set; scalar_t__ timing_adjust; } ;
typedef TYPE_1__ obs_source_t ;



__attribute__((used)) static inline void reset_audio_timing(obs_source_t *source, uint64_t timestamp,
          uint64_t os_time)
{
 source->timing_set = 1;
 source->timing_adjust = os_time - timestamp;
}
