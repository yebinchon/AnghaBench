
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_format { ____Placeholder_video_format } video_format ;
typedef enum convert_type { ____Placeholder_convert_type } convert_type ;


 int CONVERT_420 ;
 int CONVERT_420_A ;
 int CONVERT_422 ;
 int CONVERT_422_A ;
 int CONVERT_422_PACK ;
 int CONVERT_444 ;
 int CONVERT_444_A ;
 int CONVERT_444_A_PACK ;
 int CONVERT_800 ;
 int CONVERT_BGR3 ;
 int CONVERT_NONE ;
 int CONVERT_NV12 ;
 int CONVERT_RGB_LIMITED ;
__attribute__((used)) static inline enum convert_type get_convert_type(enum video_format format,
       bool full_range)
{
 switch (format) {
 case 139:
  return CONVERT_420;
 case 134:
  return CONVERT_NV12;
 case 136:
  return CONVERT_444;
 case 138:
  return CONVERT_422;

 case 128:
 case 129:
 case 132:
  return CONVERT_422_PACK;

 case 131:
  return CONVERT_800;

 case 135:
 case 133:
 case 142:
 case 141:
  return full_range ? CONVERT_NONE : CONVERT_RGB_LIMITED;

 case 143:
  return CONVERT_BGR3;

 case 140:
  return CONVERT_420_A;

 case 137:
  return CONVERT_422_A;

 case 130:
  return CONVERT_444_A;

 case 144:
  return CONVERT_444_A_PACK;
 }

 return CONVERT_NONE;
}
