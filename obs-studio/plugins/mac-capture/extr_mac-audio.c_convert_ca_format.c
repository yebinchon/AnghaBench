
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum audio_format { ____Placeholder_audio_format } audio_format ;
typedef int UInt32 ;


 int AUDIO_FORMAT_16BIT ;
 int AUDIO_FORMAT_16BIT_PLANAR ;
 int AUDIO_FORMAT_32BIT ;
 int AUDIO_FORMAT_32BIT_PLANAR ;
 int AUDIO_FORMAT_FLOAT ;
 int AUDIO_FORMAT_FLOAT_PLANAR ;
 int AUDIO_FORMAT_U8BIT ;
 int AUDIO_FORMAT_U8BIT_PLANAR ;
 int AUDIO_FORMAT_UNKNOWN ;
 int kAudioFormatFlagIsFloat ;
 int kAudioFormatFlagIsNonInterleaved ;
 int kAudioFormatFlagIsSignedInteger ;

__attribute__((used)) static inline enum audio_format convert_ca_format(UInt32 format_flags,
        UInt32 bits)
{
 bool planar = (format_flags & kAudioFormatFlagIsNonInterleaved) != 0;

 if (format_flags & kAudioFormatFlagIsFloat)
  return planar ? AUDIO_FORMAT_FLOAT_PLANAR : AUDIO_FORMAT_FLOAT;

 if (!(format_flags & kAudioFormatFlagIsSignedInteger) && bits == 8)
  return planar ? AUDIO_FORMAT_U8BIT_PLANAR : AUDIO_FORMAT_U8BIT;


 if ((format_flags & kAudioFormatFlagIsSignedInteger) == 0)
  return AUDIO_FORMAT_UNKNOWN;

 if (bits == 16)
  return planar ? AUDIO_FORMAT_16BIT_PLANAR : AUDIO_FORMAT_16BIT;
 else if (bits == 32)
  return planar ? AUDIO_FORMAT_32BIT_PLANAR : AUDIO_FORMAT_32BIT;

 return AUDIO_FORMAT_UNKNOWN;
}
