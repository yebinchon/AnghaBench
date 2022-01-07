
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum audio_format { ____Placeholder_audio_format } audio_format ;
__attribute__((used)) static inline bool is_audio_planar(enum audio_format format)
{
 switch (format) {
 case 130:
 case 136:
 case 134:
 case 132:
  return 0;

 case 129:
 case 131:
 case 135:
 case 133:
  return 1;

 case 128:
  return 0;
 }

 return 0;
}
