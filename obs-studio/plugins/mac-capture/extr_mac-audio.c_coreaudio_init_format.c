
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct obs_audio_info {int speakers; } ;
struct coreaudio_data {int speakers; scalar_t__ sample_rate; int format; int unit; } ;
typedef int desc ;
typedef int UInt32 ;
struct TYPE_4__ {int mChannelsPerFrame; int mBytesPerFrame; int mBitsPerChannel; int mBytesPerPacket; int mFramesPerPacket; scalar_t__ mFormatID; scalar_t__ mSampleRate; scalar_t__ mFormatFlags; } ;
typedef int OSStatus ;
typedef TYPE_1__ AudioStreamBasicDescription ;


 int AUDIO_FORMAT_UNKNOWN ;
 int BUS_INPUT ;
 int LOG_WARNING ;
 int SCOPE_INPUT ;
 int SCOPE_OUTPUT ;
 int SPEAKERS_UNKNOWN ;
 int blog (int ,char*) ;
 int ca_success (int ,struct coreaudio_data*,char*,char*) ;
 int ca_warn (struct coreaudio_data*,char*,char*,...) ;
 int convert_ca_format (scalar_t__,int) ;
 int convert_ca_speaker_layout (int) ;
 int get_audio_channels (int ) ;
 int get_property (int ,int ,int ,int ,TYPE_1__*,int*) ;
 scalar_t__ kAudioFormatLinearPCM ;
 int kAudioUnitProperty_StreamFormat ;
 int obs_get_audio_info (struct obs_audio_info*) ;
 int set_property (int ,int ,int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static bool coreaudio_init_format(struct coreaudio_data *ca)
{
 AudioStreamBasicDescription desc;
 OSStatus stat;
 UInt32 size = sizeof(desc);
 struct obs_audio_info aoi;
 int channels;

 if (!obs_get_audio_info(&aoi)) {
  blog(LOG_WARNING, "No active audio");
  return 0;
 }
 channels = get_audio_channels(aoi.speakers);

 stat = get_property(ca->unit, kAudioUnitProperty_StreamFormat,
       SCOPE_INPUT, BUS_INPUT, &desc, &size);
 if (!ca_success(stat, ca, "coreaudio_init_format", "get input format"))
  return 0;




 if (desc.mChannelsPerFrame > 8) {
  desc.mChannelsPerFrame = channels;
  desc.mBytesPerFrame = channels * desc.mBitsPerChannel / 8;
  desc.mBytesPerPacket =
   desc.mFramesPerPacket * desc.mBytesPerFrame;
 }

 stat = set_property(ca->unit, kAudioUnitProperty_StreamFormat,
       SCOPE_OUTPUT, BUS_INPUT, &desc, size);
 if (!ca_success(stat, ca, "coreaudio_init_format", "set output format"))
  return 0;

 if (desc.mFormatID != kAudioFormatLinearPCM) {
  ca_warn(ca, "coreaudio_init_format", "format is not PCM");
  return 0;
 }

 ca->format = convert_ca_format(desc.mFormatFlags, desc.mBitsPerChannel);
 if (ca->format == AUDIO_FORMAT_UNKNOWN) {
  ca_warn(ca, "coreaudio_init_format",
   "unknown format flags: "
   "%u, bits: %u",
   (unsigned int)desc.mFormatFlags,
   (unsigned int)desc.mBitsPerChannel);
  return 0;
 }

 ca->sample_rate = (uint32_t)desc.mSampleRate;
 ca->speakers = convert_ca_speaker_layout(desc.mChannelsPerFrame);

 if (ca->speakers == SPEAKERS_UNKNOWN) {
  ca_warn(ca, "coreaudio_init_format",
   "unknown speaker layout: "
   "%u channels",
   (unsigned int)desc.mChannelsPerFrame);
  return 0;
 }

 return 1;
}
