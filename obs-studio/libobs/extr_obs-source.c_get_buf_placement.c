
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int audio_t ;


 scalar_t__ audio_output_get_sample_rate (int *) ;

__attribute__((used)) static inline size_t get_buf_placement(audio_t *audio, uint64_t offset)
{
 uint32_t sample_rate = audio_output_get_sample_rate(audio);
 return (size_t)(offset * (uint64_t)sample_rate / 1000000000ULL);
}
