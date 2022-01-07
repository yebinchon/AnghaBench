
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;
typedef enum audio_format { ____Placeholder_audio_format } audio_format ;


 size_t get_audio_channels (int) ;
 scalar_t__ is_audio_planar (int) ;

__attribute__((used)) static inline size_t get_audio_planes(enum audio_format format,
          enum speaker_layout speakers)
{
 return (is_audio_planar(format) ? get_audio_channels(speakers) : 1);
}
