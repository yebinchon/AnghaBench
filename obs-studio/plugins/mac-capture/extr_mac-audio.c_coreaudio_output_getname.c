
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* TEXT_AUDIO_OUTPUT ;
 int UNUSED_PARAMETER (void*) ;

__attribute__((used)) static const char *coreaudio_output_getname(void *unused)
{
 UNUSED_PARAMETER(unused);
 return TEXT_AUDIO_OUTPUT;
}
