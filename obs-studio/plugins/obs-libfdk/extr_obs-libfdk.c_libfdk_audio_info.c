
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_convert_info {int format; } ;


 int AUDIO_FORMAT_16BIT ;
 int UNUSED_PARAMETER (void*) ;

__attribute__((used)) static void libfdk_audio_info(void *data, struct audio_convert_info *info)
{
 UNUSED_PARAMETER(data);
 info->format = AUDIO_FORMAT_16BIT;
}
