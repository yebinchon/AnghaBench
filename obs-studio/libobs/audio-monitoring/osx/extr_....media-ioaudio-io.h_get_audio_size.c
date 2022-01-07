
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;
typedef enum audio_format { ____Placeholder_audio_format } audio_format ;


 int get_audio_bytes_per_channel (int) ;
 int get_audio_channels (int) ;
 int is_audio_planar (int) ;

__attribute__((used)) static inline size_t get_audio_size(enum audio_format format,
        enum speaker_layout speakers,
        uint32_t frames)
{
 bool planar = is_audio_planar(format);

 return (planar ? 1 : get_audio_channels(speakers)) *
        get_audio_bytes_per_channel(format) * frames;
}
