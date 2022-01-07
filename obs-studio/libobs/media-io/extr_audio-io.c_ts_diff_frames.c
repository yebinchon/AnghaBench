
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int audio_t ;


 int positive_round (double) ;
 double ts_to_frames (int const*,int ) ;

__attribute__((used)) static int64_t ts_diff_frames(const audio_t *audio, uint64_t ts1, uint64_t ts2)
{
 double diff = ts_to_frames(audio, ts1) - ts_to_frames(audio, ts2);
 return (int64_t)positive_round(diff);
}
