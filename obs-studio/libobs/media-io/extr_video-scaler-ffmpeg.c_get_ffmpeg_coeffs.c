
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_colorspace { ____Placeholder_video_colorspace } video_colorspace ;


 int SWS_CS_ITU601 ;
 int SWS_CS_ITU709 ;



 int const* sws_getCoefficients (int ) ;

__attribute__((used)) static inline const int *get_ffmpeg_coeffs(enum video_colorspace cs)
{
 switch (cs) {
 case 128:
  return sws_getCoefficients(SWS_CS_ITU601);
 case 130:
  return sws_getCoefficients(SWS_CS_ITU601);
 case 129:
  return sws_getCoefficients(SWS_CS_ITU709);
 }

 return sws_getCoefficients(SWS_CS_ITU601);
}
